@interface TRICEnvironmentManager
+ (BOOL)validateTrialPath:(id)a3 requireUserPath:(BOOL)a4;
+ (const)getLoginPasswd;
+ (id)envToString:(int64_t)a3;
+ (int)checkDeviceUnlocked;
+ (int)checkIfConnectedToVPN:(BOOL *)a3;
+ (int)resetDaemonProcess;
+ (int64_t)currentEnv;
@end

@implementation TRICEnvironmentManager

+ (BOOL)validateTrialPath:(id)a3 requireUserPath:(BOOL)a4
{
  v4 = a4;
  v6 = [a3 pathComponents];
  if (v6)
  {
    v7 = [a1 trialDaemonUserName];
    if (v4 && ![v6 containsObject:v7])
    {
      v9 = 0;
    }

    else
    {
      v8 = [v6 lastObject];
      v9 = [v8 isEqualToString:@"Trial"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (int)resetDaemonProcess
{
  v7[2] = *MEMORY[0x277D85DE8];
  if (geteuid())
  {
    [TRICPrinter printNewlineAndLogErrorWithFormat:@"Warning: Running reset without root access. Please ensure you are running reset as root."];
  }

  [TRICCommandRunner runCommand:@"/bin/launchctl" withArgs:&unk_28436FAB0];
  if (!getuid())
  {
    v7[0] = @"unload";
    v7[1] = @"/System/Library/LaunchDaemons/com.apple.triald.plist";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
    v5 = [TRICCommandRunner runCommand:@"/bin/launchctl" withArgs:v4];

    if (!v5)
    {
      result = 0;
      goto LABEL_9;
    }

    [TRICPrinter printNewlineAndLogErrorWithFormat:@"Error unloading triald at %@", @"/System/Library/LaunchDaemons/com.apple.triald.plist"];
    goto LABEL_8;
  }

  result = [TRICCommandRunner runCommand:@"/usr/bin/killall" withArgs:&unk_28436FAC8];
  if (result)
  {
    v3 = __error();
    [TRICPrinter printNewlineAndLogErrorWithFormat:@"Error killing triald. Error: %s", strerror(*v3)];
LABEL_8:
    result = 1;
  }

LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

+ (int)checkDeviceUnlocked
{
  result = [MEMORY[0x277D42598] isClassCLocked];
  if (result)
  {
    fwrite("Error: Device has not been unlocked since reboot, please unlock to use trialcontroller\n", 0x57uLL, 1uLL, *MEMORY[0x277D85DF8]);
    return 3;
  }

  return result;
}

+ (int64_t)currentEnv
{
  v12[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"read";
  v12[1] = @"com.apple.triald";
  v12[2] = @"com.apple.triald.ck.serverEnvironment";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:3];
  v10 = 0;
  v11 = 0;
  v3 = [TRICCommandRunner runCommandAsTrialDaemonUserName:@"/usr/bin/defaults" withArgs:v2 output:&v11 error:&v10];
  v4 = v11;
  v5 = v10;

  if (v3)
  {

    v4 = 0;
  }

  if ([v4 length])
  {
    v9 = 0;
    if ([TRIMisc convertFromString:v4 usingBase:10 toI64:&v9])
    {
      v6 = v9;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    [TRICPrinter printNewlineAndLogErrorWithFormat:@"Unable to read defaults. Error: %@", 0];
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (int)checkIfConnectedToVPN:(BOOL *)a3
{
  v8 = 0;
  v9 = 0;
  v4 = [TRICCommandRunner runCommand:@"/sbin/ifconfig" withArgs:&unk_28436FAE0 output:&v9 error:&v8];
  v5 = v9;
  v6 = v8;
  *a3 = [v5 rangeOfString:@"VPN: Corporate"] != 0x7FFFFFFFFFFFFFFFLL;

  return v4;
}

+ (id)envToString:(int64_t)a3
{
  if ((a3 - 1) > 4)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_27885DF00[a3 - 1];
  }
}

+ (const)getLoginPasswd
{
  *__error() = 0;
  result = getpwnam("mobile");
  if (result)
  {
    if (result->pw_uid)
    {
      return result;
    }

    fwrite("Warning: got pwInfo for uid=0.\n", 0x1FuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  else
  {
    v3 = *MEMORY[0x277D85DF8];
    v4 = __error();
    v5 = strerror(*v4);
    v6 = __error();
    fprintf(v3, "Warning: failed to get pwInfo: %s (%d)\n", v5, *v6);
  }

  return 0;
}

@end
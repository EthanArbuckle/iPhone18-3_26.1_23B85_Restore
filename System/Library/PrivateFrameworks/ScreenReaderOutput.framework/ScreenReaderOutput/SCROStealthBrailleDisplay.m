@interface SCROStealthBrailleDisplay
+ (id)displayWithDelegate:(id)a3;
+ (id)displayWithIOElement:(id)a3 driverIdentifier:(id)a4 delegate:(id)a5;
- (void)_mainDisplayHandler:(id)a3;
@end

@implementation SCROStealthBrailleDisplay

+ (id)displayWithDelegate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SCROBrailleStealthDriver);
  if (v4)
  {
    v5 = [(SCROBrailleDisplay *)[SCROStealthBrailleDisplay alloc] _initWithDriver:v4 driverIdentifier:@"com.apple.scrod.braille.driver.stealth" ioElement:0 delegate:v3];
    v6 = v5;
    if (v5)
    {
      [v5 _delayedDisplayLoad];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)displayWithIOElement:(id)a3 driverIdentifier:(id)a4 delegate:(id)a5
{
  v7 = a5;
  if (a3 || ![a4 isEqualToString:@"com.apple.scrod.braille.driver.stealth"])
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_opt_class() displayWithDelegate:v7];
  }

  return v8;
}

- (void)_mainDisplayHandler:(id)a3
{
  v4 = a3;
  v5 = [v4 data];
  if ([v5 length])
  {
    v7[0] = 0;
    v7[1] = 0;
    if (([v5 getRange:v7 ofAttribute:kSCROTokenAttribute[0]] & 1) != 0 || objc_msgSend(v5, "getRange:ofAttribute:", v7, kSCROAlertAttribute[0]))
    {
      v6.receiver = self;
      v6.super_class = SCROStealthBrailleDisplay;
      [(SCROStealthBrailleDisplay *)&v6 _mainDisplayHandler:v4];
    }
  }
}

@end
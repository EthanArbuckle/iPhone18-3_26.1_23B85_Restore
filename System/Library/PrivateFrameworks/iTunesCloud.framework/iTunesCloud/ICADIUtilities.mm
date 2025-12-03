@interface ICADIUtilities
+ (BOOL)generateMachineDataForAccountID:(unint64_t)d returningMachineIDData:(id *)data otpData:(id *)otpData error:(id *)error;
@end

@implementation ICADIUtilities

+ (BOOL)generateMachineDataForAccountID:(unint64_t)d returningMachineIDData:(id *)data otpData:(id *)otpData error:(id *)error
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  qi864985u0(d, &v17, &v15 + 4, &v16, &v15);
  if (v9)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v9 userInfo:0];
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (data)
  {
    *data = [MEMORY[0x1E695DEF0] ic_dataWithADIBytes:v17 length:HIDWORD(v15)];
    if (otpData)
    {
      goto LABEL_6;
    }

LABEL_10:
    jk24uiwqrg(v16);
    v10 = 0;
    if (!error)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  jk24uiwqrg(v17);
  if (!otpData)
  {
    goto LABEL_10;
  }

LABEL_6:
  v11 = [MEMORY[0x1E695DEF0] ic_dataWithADIBytes:v16 length:v15];
  v12 = v11;
  v10 = 0;
  *otpData = v11;
  if (error)
  {
LABEL_7:
    v10 = v10;
    *error = v10;
  }

LABEL_8:
  v13 = v10 == 0;

  return v13;
}

@end
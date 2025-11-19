@interface ICADIUtilities
+ (BOOL)generateMachineDataForAccountID:(unint64_t)a3 returningMachineIDData:(id *)a4 otpData:(id *)a5 error:(id *)a6;
@end

@implementation ICADIUtilities

+ (BOOL)generateMachineDataForAccountID:(unint64_t)a3 returningMachineIDData:(id *)a4 otpData:(id *)a5 error:(id *)a6
{
  v16 = 0;
  v17 = 0;
  v15 = 0;
  qi864985u0(a3, &v17, &v15 + 4, &v16, &v15);
  if (v9)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"ICFairPlayError" code:v9 userInfo:0];
    if (!a6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a4)
  {
    *a4 = [MEMORY[0x1E695DEF0] ic_dataWithADIBytes:v17 length:HIDWORD(v15)];
    if (a5)
    {
      goto LABEL_6;
    }

LABEL_10:
    jk24uiwqrg(v16);
    v10 = 0;
    if (!a6)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  jk24uiwqrg(v17);
  if (!a5)
  {
    goto LABEL_10;
  }

LABEL_6:
  v11 = [MEMORY[0x1E695DEF0] ic_dataWithADIBytes:v16 length:v15];
  v12 = v11;
  v10 = 0;
  *a5 = v11;
  if (a6)
  {
LABEL_7:
    v10 = v10;
    *a6 = v10;
  }

LABEL_8:
  v13 = v10 == 0;

  return v13;
}

@end
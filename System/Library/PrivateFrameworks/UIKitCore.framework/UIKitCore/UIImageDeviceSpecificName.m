@interface UIImageDeviceSpecificName
@end

@implementation UIImageDeviceSpecificName

void ___UIImageDeviceSpecificName_block_invoke()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if ((v1 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v2 = 1024.0;
  }

  else
  {
    v2 = 480.0;
  }

  v3 = [objc_opt_self() mainScreen];
  [v3 _referenceBounds];
  v5 = v4;

  if (v5 <= v2)
  {
    v7 = +[UIDevice currentDevice];
    v8 = [v7 userInterfaceIdiom];

    v9 = dbl_18A67CB00[(v8 & 0xFFFFFFFFFFFFFFFBLL) == 1];
    v10 = [objc_opt_self() mainScreen];
    [v10 _pointsPerInch];
    v12 = v11;

    if (v12 <= v9)
    {
      return;
    }

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-%.0fr", *&v12];
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-%.0fh", *&v5];
  }

  v13 = qword_1ED498D38;
  qword_1ED498D38 = v6;
}

@end
@interface PLMomentThemeAssignment
- (PLMomentThemeAssignment)initWithThemeName:(id)a3 adapterVersion:(int64_t)a4 uemVersion:(int64_t)a5 confidence:(id)a6;
@end

@implementation PLMomentThemeAssignment

- (PLMomentThemeAssignment)initWithThemeName:(id)a3 adapterVersion:(int64_t)a4 uemVersion:(int64_t)a5 confidence:(id)a6
{
  v12 = a3;
  v13 = a6;
  if (!v12)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PLMomentTheme.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"themeName"}];
  }

  v18.receiver = self;
  v18.super_class = PLMomentThemeAssignment;
  v14 = [(PLMomentThemeAssignment *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_themeName, a3);
    v15->_adapterVersion = a4;
    v15->_uemVersion = a5;
    objc_storeStrong(&v15->_confidence, a6);
  }

  return v15;
}

@end
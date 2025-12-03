@interface PLMomentThemeAssignment
- (PLMomentThemeAssignment)initWithThemeName:(id)name adapterVersion:(int64_t)version uemVersion:(int64_t)uemVersion confidence:(id)confidence;
@end

@implementation PLMomentThemeAssignment

- (PLMomentThemeAssignment)initWithThemeName:(id)name adapterVersion:(int64_t)version uemVersion:(int64_t)uemVersion confidence:(id)confidence
{
  nameCopy = name;
  confidenceCopy = confidence;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMomentTheme.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"themeName"}];
  }

  v18.receiver = self;
  v18.super_class = PLMomentThemeAssignment;
  v14 = [(PLMomentThemeAssignment *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_themeName, name);
    v15->_adapterVersion = version;
    v15->_uemVersion = uemVersion;
    objc_storeStrong(&v15->_confidence, confidence);
  }

  return v15;
}

@end
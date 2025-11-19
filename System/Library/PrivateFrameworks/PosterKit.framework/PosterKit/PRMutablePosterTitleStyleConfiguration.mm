@interface PRMutablePosterTitleStyleConfiguration
- (PRMutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 contentsLuminance:(double)a10 alternateDateEnabled:(BOOL)a11 groupName:(id)a12;
- (PRMutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxYPortrait:(double)a10 preferredTimeMaxYLandscape:(double)a11 contentsLuminance:(double)a12 alternateDateEnabled:(BOOL)a13 groupName:(id)a14 adaptiveTimeHeightUserConfigured:(BOOL)a15 version:(unint64_t)a16;
- (PRMutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxYPortrait:(double)a10 preferredTimeMaxYLandscape:(double)a11 contentsLuminance:(double)a12 alternateDateEnabled:(BOOL)a13 groupName:(id)a14 version:(unint64_t)a15;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPreferredTimeMaxY:(double)a3 forOrientation:(int64_t)a4;
- (void)setTitleColor:(id)a3;
@end

@implementation PRMutablePosterTitleStyleConfiguration

- (PRMutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 contentsLuminance:(double)a10 alternateDateEnabled:(BOOL)a11 groupName:(id)a12
{
  v19 = a12;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a3;
  [objc_opt_class() defaultPreferredTimeMaxY];
  LOWORD(v26) = __PAIR16__(a11, a9);
  v24 = [PRPosterTitleStyleConfiguration initWithTimeFontConfiguration:"initWithTimeFontConfiguration:preferredTitleAlignment:preferredTitleLayout:titleContentStyle:titleColor:timeNumberingSystem:userConfigured:preferredTimeMaxY:contentsLuminance:alternateDateEnabled:groupName:" preferredTitleAlignment:v23 preferredTitleLayout:a4 titleContentStyle:a5 titleColor:v22 timeNumberingSystem:v21 userConfigured:v20 preferredTimeMaxY:v26 contentsLuminance:v19 alternateDateEnabled:? groupName:?];

  return v24;
}

- (PRMutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxYPortrait:(double)a10 preferredTimeMaxYLandscape:(double)a11 contentsLuminance:(double)a12 alternateDateEnabled:(BOOL)a13 groupName:(id)a14 version:(unint64_t)a15
{
  LOBYTE(v17) = 0;
  LOWORD(v16) = __PAIR16__(a13, a9);
  return [(PRMutablePosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:a3 preferredTitleAlignment:a4 preferredTitleLayout:a5 titleContentStyle:a6 titleColor:a7 timeNumberingSystem:a8 userConfigured:a10 preferredTimeMaxYPortrait:a11 preferredTimeMaxYLandscape:a12 contentsLuminance:v16 alternateDateEnabled:a14 groupName:v17 adaptiveTimeHeightUserConfigured:a15 version:?];
}

- (PRMutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)a3 preferredTitleAlignment:(unint64_t)a4 preferredTitleLayout:(unint64_t)a5 titleContentStyle:(id)a6 titleColor:(id)a7 timeNumberingSystem:(id)a8 userConfigured:(BOOL)a9 preferredTimeMaxYPortrait:(double)a10 preferredTimeMaxYLandscape:(double)a11 contentsLuminance:(double)a12 alternateDateEnabled:(BOOL)a13 groupName:(id)a14 adaptiveTimeHeightUserConfigured:(BOOL)a15 version:(unint64_t)a16
{
  v24 = a3;
  v42 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a14;
  v44.receiver = self;
  v44.super_class = PRMutablePosterTitleStyleConfiguration;
  HIBYTE(v40) = a13;
  LOBYTE(v40) = a9;
  v28 = [(PRPosterTitleStyleConfiguration *)&v44 initWithTimeFontConfiguration:v24 preferredTitleAlignment:a4 preferredTitleLayout:a5 titleContentStyle:v42 titleColor:v25 timeNumberingSystem:v26 userConfigured:a10 preferredTimeMaxYPortrait:a11 preferredTimeMaxYLandscape:a12 contentsLuminance:v40 alternateDateEnabled:v27 groupName:a15 adaptiveTimeHeightUserConfigured:a16 version:?];
  if (v28)
  {
    v29 = [v24 copy];
    timeFontConfiguration = v28->_timeFontConfiguration;
    v28->_timeFontConfiguration = v29;

    v28->_preferredTitleAlignment = a4;
    v28->_preferredTitleLayout = a5;
    v31 = [v42 copy];
    titleContentStyle = v28->_titleContentStyle;
    v28->_titleContentStyle = v31;

    v33 = [v25 copy];
    titleColor = v28->_titleColor;
    v28->_titleColor = v33;

    v35 = [v26 copy];
    timeNumberingSystem = v28->_timeNumberingSystem;
    v28->_timeNumberingSystem = v35;

    v28->_userConfigured = a9;
    v28->_adaptiveTimeHeightUserConfigured = a15;
    v28->_preferredTimeMaxYPortrait = a10;
    v28->_preferredTimeMaxYLandscape = a11;
    v28->_contentsLuminance = a12;
    v37 = [v27 copy];
    groupName = v28->_groupName;
    v28->_groupName = v37;

    v28->_alternateDateEnabled = a13;
    v28->_version = a16;
  }

  return v28;
}

- (void)setTitleColor:(id)a3
{
  v6 = a3;
  if (![(PRPosterColor *)self->_titleColor isEqual:?])
  {
    objc_storeStrong(&self->_titleColor, a3);
    v5 = [v6 contentStyle];
    [(PRMutablePosterTitleStyleConfiguration *)self setTitleContentStyle:v5];
  }
}

- (void)setPreferredTimeMaxY:(double)a3 forOrientation:(int64_t)a4
{
  if ((a4 - 1) > 1)
  {
    if ((a4 - 3) <= 1)
    {
      [(PRMutablePosterTitleStyleConfiguration *)self setPreferredTimeMaxYLandscape:a3];
    }
  }

  else
  {
    [(PRMutablePosterTitleStyleConfiguration *)self setPreferredTimeMaxYPortrait:a3];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PRImmutablePosterTitleStyleConfiguration alloc];

  return [(PRPosterTitleStyleConfiguration *)v4 initWithTitleStyleConfiguration:self];
}

@end
@interface PRImmutablePosterTitleStyleConfiguration
- (PRImmutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured contentsLuminance:(double)self0 alternateDateEnabled:(BOOL)self1 groupName:(id)self2;
- (PRImmutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)self0 preferredTimeMaxYLandscape:(double)self1 contentsLuminance:(double)self2 alternateDateEnabled:(BOOL)self3 groupName:(id)self4 adaptiveTimeHeightUserConfigured:(BOOL)self5 version:(unint64_t)self6;
- (PRImmutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)self0 preferredTimeMaxYLandscape:(double)self1 contentsLuminance:(double)self2 alternateDateEnabled:(BOOL)self3 groupName:(id)self4 version:(unint64_t)self5;
@end

@implementation PRImmutablePosterTitleStyleConfiguration

- (PRImmutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured contentsLuminance:(double)self0 alternateDateEnabled:(BOOL)self1 groupName:(id)self2
{
  nameCopy = name;
  systemCopy = system;
  colorCopy = color;
  styleCopy = style;
  configurationCopy = configuration;
  [objc_opt_class() defaultPreferredTimeMaxY];
  LOWORD(v26) = __PAIR16__(enabled, configured);
  v24 = [PRPosterTitleStyleConfiguration initWithTimeFontConfiguration:"initWithTimeFontConfiguration:preferredTitleAlignment:preferredTitleLayout:titleContentStyle:titleColor:timeNumberingSystem:userConfigured:preferredTimeMaxY:contentsLuminance:alternateDateEnabled:groupName:" preferredTitleAlignment:configurationCopy preferredTitleLayout:alignment titleContentStyle:layout titleColor:styleCopy timeNumberingSystem:colorCopy userConfigured:systemCopy preferredTimeMaxY:v26 contentsLuminance:nameCopy alternateDateEnabled:? groupName:?];

  return v24;
}

- (PRImmutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)self0 preferredTimeMaxYLandscape:(double)self1 contentsLuminance:(double)self2 alternateDateEnabled:(BOOL)self3 groupName:(id)self4 version:(unint64_t)self5
{
  LOBYTE(v17) = 0;
  LOWORD(v16) = __PAIR16__(enabled, configured);
  return [(PRImmutablePosterTitleStyleConfiguration *)self initWithTimeFontConfiguration:configuration preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:style titleColor:color timeNumberingSystem:system userConfigured:portrait preferredTimeMaxYPortrait:landscape preferredTimeMaxYLandscape:luminance contentsLuminance:v16 alternateDateEnabled:name groupName:v17 adaptiveTimeHeightUserConfigured:version version:?];
}

- (PRImmutablePosterTitleStyleConfiguration)initWithTimeFontConfiguration:(id)configuration preferredTitleAlignment:(unint64_t)alignment preferredTitleLayout:(unint64_t)layout titleContentStyle:(id)style titleColor:(id)color timeNumberingSystem:(id)system userConfigured:(BOOL)configured preferredTimeMaxYPortrait:(double)self0 preferredTimeMaxYLandscape:(double)self1 contentsLuminance:(double)self2 alternateDateEnabled:(BOOL)self3 groupName:(id)self4 adaptiveTimeHeightUserConfigured:(BOOL)self5 version:(unint64_t)self6
{
  configurationCopy = configuration;
  styleCopy = style;
  colorCopy = color;
  systemCopy = system;
  nameCopy = name;
  v44.receiver = self;
  v44.super_class = PRImmutablePosterTitleStyleConfiguration;
  HIBYTE(v40) = enabled;
  LOBYTE(v40) = configured;
  v28 = [(PRPosterTitleStyleConfiguration *)&v44 initWithTimeFontConfiguration:configurationCopy preferredTitleAlignment:alignment preferredTitleLayout:layout titleContentStyle:styleCopy titleColor:colorCopy timeNumberingSystem:systemCopy userConfigured:portrait preferredTimeMaxYPortrait:landscape preferredTimeMaxYLandscape:luminance contentsLuminance:v40 alternateDateEnabled:nameCopy groupName:userConfigured adaptiveTimeHeightUserConfigured:version version:?];
  if (v28)
  {
    v29 = [configurationCopy copy];
    timeFontConfiguration = v28->_timeFontConfiguration;
    v28->_timeFontConfiguration = v29;

    v28->_preferredTitleAlignment = alignment;
    v28->_preferredTitleLayout = layout;
    v31 = [styleCopy copy];
    titleContentStyle = v28->_titleContentStyle;
    v28->_titleContentStyle = v31;

    v33 = [colorCopy copy];
    titleColor = v28->_titleColor;
    v28->_titleColor = v33;

    v35 = [systemCopy copy];
    timeNumberingSystem = v28->_timeNumberingSystem;
    v28->_timeNumberingSystem = v35;

    v28->_userConfigured = configured;
    v28->_adaptiveTimeHeightUserConfigured = userConfigured;
    v28->_preferredTimeMaxYPortrait = portrait;
    v28->_preferredTimeMaxYLandscape = landscape;
    v28->_contentsLuminance = luminance;
    v37 = [nameCopy copy];
    groupName = v28->_groupName;
    v28->_groupName = v37;

    v28->_alternateDateEnabled = enabled;
    v28->_version = version;
  }

  return v28;
}

@end
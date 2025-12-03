@interface PUIMutableTextLayoutConfiguration
- (PUIMutableTextLayoutConfiguration)initWithFontConfiguration:(id)configuration preferredAlignment:(unint64_t)alignment preferredLayout:(unint64_t)layout style:(id)style styleColor:(id)color numberingSystemType:(id)type userConfigured:(BOOL)configured contentsLuminance:(double)self0 alternateDateEnabled:(BOOL)self1 groupName:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setStyleColor:(id)color;
@end

@implementation PUIMutableTextLayoutConfiguration

- (PUIMutableTextLayoutConfiguration)initWithFontConfiguration:(id)configuration preferredAlignment:(unint64_t)alignment preferredLayout:(unint64_t)layout style:(id)style styleColor:(id)color numberingSystemType:(id)type userConfigured:(BOOL)configured contentsLuminance:(double)self0 alternateDateEnabled:(BOOL)self1 groupName:(id)self2
{
  configurationCopy = configuration;
  styleCopy = style;
  colorCopy = color;
  typeCopy = type;
  nameCopy = name;
  v37.receiver = self;
  v37.super_class = PUIMutableTextLayoutConfiguration;
  HIBYTE(v36) = enabled;
  LOBYTE(v36) = configured;
  v24 = [(PUITextLayoutConfiguration *)&v37 initWithFontConfiguration:configurationCopy preferredAlignment:alignment preferredLayout:layout style:styleCopy styleColor:colorCopy numberingSystemType:typeCopy userConfigured:luminance contentsLuminance:v36 alternateDateEnabled:nameCopy groupName:?];
  if (v24)
  {
    v25 = [configurationCopy copy];
    fontConfiguration = v24->_fontConfiguration;
    v24->_fontConfiguration = v25;

    v24->_preferredAlignment = alignment;
    v24->_preferredLayout = layout;
    v27 = [styleCopy copy];
    style = v24->_style;
    v24->_style = v27;

    v29 = [colorCopy copy];
    styleColor = v24->_styleColor;
    v24->_styleColor = v29;

    v31 = [typeCopy copy];
    numberingSystemType = v24->_numberingSystemType;
    v24->_numberingSystemType = v31;

    v24->_userConfigured = configured;
    v24->_contentsLuminance = luminance;
    v33 = [nameCopy copy];
    groupName = v24->_groupName;
    v24->_groupName = v33;

    v24->_alternateDateEnabled = enabled;
  }

  return v24;
}

- (void)setStyleColor:(id)color
{
  colorCopy = color;
  if (![(PUIStyleColor *)self->_styleColor isEqual:?])
  {
    objc_storeStrong(&self->_styleColor, color);
    contentStyle = [colorCopy contentStyle];
    [(PUIMutableTextLayoutConfiguration *)self setStyle:contentStyle];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PUIImmutableTextLayoutConfiguration alloc];

  return [(PUITextLayoutConfiguration *)v4 initWithTextLayoutConfiguration:self];
}

@end
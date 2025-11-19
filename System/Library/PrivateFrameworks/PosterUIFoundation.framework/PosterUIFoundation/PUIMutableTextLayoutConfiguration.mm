@interface PUIMutableTextLayoutConfiguration
- (PUIMutableTextLayoutConfiguration)initWithFontConfiguration:(id)a3 preferredAlignment:(unint64_t)a4 preferredLayout:(unint64_t)a5 style:(id)a6 styleColor:(id)a7 numberingSystemType:(id)a8 userConfigured:(BOOL)a9 contentsLuminance:(double)a10 alternateDateEnabled:(BOOL)a11 groupName:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setStyleColor:(id)a3;
@end

@implementation PUIMutableTextLayoutConfiguration

- (PUIMutableTextLayoutConfiguration)initWithFontConfiguration:(id)a3 preferredAlignment:(unint64_t)a4 preferredLayout:(unint64_t)a5 style:(id)a6 styleColor:(id)a7 numberingSystemType:(id)a8 userConfigured:(BOOL)a9 contentsLuminance:(double)a10 alternateDateEnabled:(BOOL)a11 groupName:(id)a12
{
  v19 = a3;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a12;
  v37.receiver = self;
  v37.super_class = PUIMutableTextLayoutConfiguration;
  HIBYTE(v36) = a11;
  LOBYTE(v36) = a9;
  v24 = [(PUITextLayoutConfiguration *)&v37 initWithFontConfiguration:v19 preferredAlignment:a4 preferredLayout:a5 style:v20 styleColor:v21 numberingSystemType:v22 userConfigured:a10 contentsLuminance:v36 alternateDateEnabled:v23 groupName:?];
  if (v24)
  {
    v25 = [v19 copy];
    fontConfiguration = v24->_fontConfiguration;
    v24->_fontConfiguration = v25;

    v24->_preferredAlignment = a4;
    v24->_preferredLayout = a5;
    v27 = [v20 copy];
    style = v24->_style;
    v24->_style = v27;

    v29 = [v21 copy];
    styleColor = v24->_styleColor;
    v24->_styleColor = v29;

    v31 = [v22 copy];
    numberingSystemType = v24->_numberingSystemType;
    v24->_numberingSystemType = v31;

    v24->_userConfigured = a9;
    v24->_contentsLuminance = a10;
    v33 = [v23 copy];
    groupName = v24->_groupName;
    v24->_groupName = v33;

    v24->_alternateDateEnabled = a11;
  }

  return v24;
}

- (void)setStyleColor:(id)a3
{
  v6 = a3;
  if (![(PUIStyleColor *)self->_styleColor isEqual:?])
  {
    objc_storeStrong(&self->_styleColor, a3);
    v5 = [v6 contentStyle];
    [(PUIMutableTextLayoutConfiguration *)self setStyle:v5];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [PUIImmutableTextLayoutConfiguration alloc];

  return [(PUITextLayoutConfiguration *)v4 initWithTextLayoutConfiguration:self];
}

@end
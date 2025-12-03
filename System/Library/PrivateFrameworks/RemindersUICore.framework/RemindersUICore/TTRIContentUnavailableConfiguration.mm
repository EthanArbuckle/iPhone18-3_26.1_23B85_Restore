@interface TTRIContentUnavailableConfiguration
+ (id)emptyConfiguration;
+ (id)emptyProminentConfiguration;
+ (id)loadingConfiguration;
+ (id)searchConfiguration;
- (NSAttributedString)attributedText;
- (NSAttributedString)secondaryAttributedText;
- (NSString)secondaryText;
- (NSString)text;
- (TTRIContentUnavailableButtonProperties)buttonProperties;
- (TTRIContentUnavailableTextProperties)secondaryTextProperties;
- (TTRIContentUnavailableTextProperties)textProperties;
- (UIImage)image;
- (id)makeContentView;
- (id)updatedConfigurationForState:(id)state;
- (void)setAttributedText:(id)text;
- (void)setImage:(id)image;
- (void)setSecondaryAttributedText:(id)text;
- (void)setSecondaryText:(id)text;
- (void)setText:(id)text;
@end

@implementation TTRIContentUnavailableConfiguration

+ (id)emptyConfiguration
{
  emptyConfiguration = [MEMORY[0x277D75390] emptyConfiguration];
  asTTRI = [emptyConfiguration asTTRI];

  return asTTRI;
}

+ (id)emptyProminentConfiguration
{
  emptyProminentConfiguration = [MEMORY[0x277D75390] emptyProminentConfiguration];
  asTTRI = [emptyProminentConfiguration asTTRI];

  return asTTRI;
}

+ (id)loadingConfiguration
{
  loadingConfiguration = [MEMORY[0x277D75390] loadingConfiguration];
  asTTRI = [loadingConfiguration asTTRI];

  return asTTRI;
}

+ (id)searchConfiguration
{
  searchConfiguration = [MEMORY[0x277D75390] searchConfiguration];
  asTTRI = [searchConfiguration asTTRI];

  return asTTRI;
}

- (UIImage)image
{
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  image = [asUIKit image];

  return image;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  [asUIKit setImage:imageCopy];
}

- (NSString)text
{
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  text = [asUIKit text];

  return text;
}

- (void)setText:(id)text
{
  textCopy = text;
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  [asUIKit setText:textCopy];
}

- (NSAttributedString)attributedText
{
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  attributedText = [asUIKit attributedText];

  return attributedText;
}

- (void)setAttributedText:(id)text
{
  textCopy = text;
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  [asUIKit setAttributedText:textCopy];
}

- (TTRIContentUnavailableTextProperties)textProperties
{
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  textProperties = [asUIKit textProperties];
  asTTRI = [textProperties asTTRI];

  return asTTRI;
}

- (NSString)secondaryText
{
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  secondaryText = [asUIKit secondaryText];

  return secondaryText;
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  [asUIKit setSecondaryText:textCopy];
}

- (NSAttributedString)secondaryAttributedText
{
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  secondaryAttributedText = [asUIKit secondaryAttributedText];

  return secondaryAttributedText;
}

- (void)setSecondaryAttributedText:(id)text
{
  textCopy = text;
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  [asUIKit setSecondaryAttributedText:textCopy];
}

- (TTRIContentUnavailableTextProperties)secondaryTextProperties
{
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  secondaryTextProperties = [asUIKit secondaryTextProperties];
  asTTRI = [secondaryTextProperties asTTRI];

  return asTTRI;
}

- (TTRIContentUnavailableButtonProperties)buttonProperties
{
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  buttonProperties = [asUIKit buttonProperties];
  asTTRI = [buttonProperties asTTRI];

  return asTTRI;
}

- (id)makeContentView
{
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  makeContentView = [asUIKit makeContentView];

  return makeContentView;
}

- (id)updatedConfigurationForState:(id)state
{
  stateCopy = state;
  v5 = objc_opt_class();
  asUIKit = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  v7 = [asUIKit updatedConfigurationForState:stateCopy];

  v8 = [v5 instanceWrappingImpl:v7];

  return v8;
}

@end
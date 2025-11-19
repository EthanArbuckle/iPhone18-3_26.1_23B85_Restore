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
- (id)updatedConfigurationForState:(id)a3;
- (void)setAttributedText:(id)a3;
- (void)setImage:(id)a3;
- (void)setSecondaryAttributedText:(id)a3;
- (void)setSecondaryText:(id)a3;
- (void)setText:(id)a3;
@end

@implementation TTRIContentUnavailableConfiguration

+ (id)emptyConfiguration
{
  v2 = [MEMORY[0x277D75390] emptyConfiguration];
  v3 = [v2 asTTRI];

  return v3;
}

+ (id)emptyProminentConfiguration
{
  v2 = [MEMORY[0x277D75390] emptyProminentConfiguration];
  v3 = [v2 asTTRI];

  return v3;
}

+ (id)loadingConfiguration
{
  v2 = [MEMORY[0x277D75390] loadingConfiguration];
  v3 = [v2 asTTRI];

  return v3;
}

+ (id)searchConfiguration
{
  v2 = [MEMORY[0x277D75390] searchConfiguration];
  v3 = [v2 asTTRI];

  return v3;
}

- (UIImage)image
{
  v2 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 image];

  return v3;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v5 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  [v5 setImage:v4];
}

- (NSString)text
{
  v2 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 text];

  return v3;
}

- (void)setText:(id)a3
{
  v4 = a3;
  v5 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  [v5 setText:v4];
}

- (NSAttributedString)attributedText
{
  v2 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 attributedText];

  return v3;
}

- (void)setAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  [v5 setAttributedText:v4];
}

- (TTRIContentUnavailableTextProperties)textProperties
{
  v2 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 textProperties];
  v4 = [v3 asTTRI];

  return v4;
}

- (NSString)secondaryText
{
  v2 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 secondaryText];

  return v3;
}

- (void)setSecondaryText:(id)a3
{
  v4 = a3;
  v5 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  [v5 setSecondaryText:v4];
}

- (NSAttributedString)secondaryAttributedText
{
  v2 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 secondaryAttributedText];

  return v3;
}

- (void)setSecondaryAttributedText:(id)a3
{
  v4 = a3;
  v5 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  [v5 setSecondaryAttributedText:v4];
}

- (TTRIContentUnavailableTextProperties)secondaryTextProperties
{
  v2 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 secondaryTextProperties];
  v4 = [v3 asTTRI];

  return v4;
}

- (TTRIContentUnavailableButtonProperties)buttonProperties
{
  v2 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 buttonProperties];
  v4 = [v3 asTTRI];

  return v4;
}

- (id)makeContentView
{
  v2 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  v3 = [v2 makeContentView];

  return v3;
}

- (id)updatedConfigurationForState:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(TTRIContentUnavailableConfiguration *)self asUIKit];
  v7 = [v6 updatedConfigurationForState:v4];

  v8 = [v5 instanceWrappingImpl:v7];

  return v8;
}

@end
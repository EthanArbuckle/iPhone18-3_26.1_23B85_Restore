@interface VUILabelFactory
+ (id)labelWithElement:(id)element textLayout:(id)layout existingLabel:(id)label;
@end

@implementation VUILabelFactory

+ (id)labelWithElement:(id)element textLayout:(id)layout existingLabel:(id)label
{
  elementCopy = element;
  layoutCopy = layout;
  labelCopy = label;
  if (elementCopy)
  {
    text = [elementCopy text];
    string = [text string];

    attributes = [elementCopy attributes];
    v13 = [attributes objectForKeyedSubscript:@"type"];

    if ([v13 length] && objc_msgSend(v13, "isEqualToString:", @"rentalExpiration") && objc_msgSend(string, "length") && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v14 = MEMORY[0x1E695DF00];
      [string doubleValue];
      v16 = [v14 dateWithTimeIntervalSince1970:v15 / 1000.0];
      v17 = [VUIRentalExpirationLabel labelWithExpirationDate:v16 textLayout:layoutCopy existingLabel:labelCopy locStringPrefix:@"EXPIRATION_IN"];
    }

    else
    {
      v17 = [VUILabel labelWithString:string textLayout:layoutCopy existingLabel:labelCopy];
    }

    [v17 transferLayoutStylesFromElement:elementCopy];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end
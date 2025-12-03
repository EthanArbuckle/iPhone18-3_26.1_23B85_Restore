@interface PKDashboardTextActionItem
+ (id)colorForSemanticColor:(int64_t)color hasTintColor:(BOOL *)tintColor;
+ (id)imageForPassFieldImage:(id)image hasTintColor:(BOOL)color;
@end

@implementation PKDashboardTextActionItem

+ (id)colorForSemanticColor:(int64_t)color hasTintColor:(BOOL *)tintColor
{
  switch(color)
  {
    case 1:
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      goto LABEL_25;
    case 2:
      labelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      goto LABEL_25;
    case 3:
      labelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      goto LABEL_25;
    case 4:
      labelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      goto LABEL_25;
    case 5:
      labelColor = [MEMORY[0x1E69DC888] linkColor];
      goto LABEL_25;
    case 6:
      labelColor = [MEMORY[0x1E69DC888] placeholderTextColor];
      goto LABEL_25;
    case 7:
      labelColor = [MEMORY[0x1E69DC888] systemFillColor];
      goto LABEL_25;
    case 8:
      labelColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
      goto LABEL_25;
    case 9:
      labelColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      goto LABEL_25;
    case 10:
      labelColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
      goto LABEL_25;
    case 11:
      labelColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
      goto LABEL_25;
    case 12:
      labelColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      goto LABEL_25;
    case 13:
      labelColor = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
      goto LABEL_25;
    case 14:
      labelColor = [MEMORY[0x1E69DC888] systemBlueColor];
      goto LABEL_25;
    case 15:
      labelColor = [MEMORY[0x1E69DC888] systemGreenColor];
      goto LABEL_25;
    case 16:
      labelColor = [MEMORY[0x1E69DC888] systemIndigoColor];
      goto LABEL_25;
    case 17:
      labelColor = [MEMORY[0x1E69DC888] systemOrangeColor];
      goto LABEL_25;
    case 18:
      labelColor = [MEMORY[0x1E69DC888] systemPinkColor];
      goto LABEL_25;
    case 19:
      labelColor = [MEMORY[0x1E69DC888] systemPurpleColor];
      goto LABEL_25;
    case 20:
      labelColor = [MEMORY[0x1E69DC888] systemRedColor];
      goto LABEL_25;
    case 21:
      labelColor = [MEMORY[0x1E69DC888] systemTealColor];
      goto LABEL_25;
    case 22:
      labelColor = [MEMORY[0x1E69DC888] systemYellowColor];
      goto LABEL_25;
    case 23:
      labelColor = [MEMORY[0x1E69DC888] systemGrayColor];
LABEL_25:
      v6 = 0;
      break;
    case 24:
      labelColor = 0;
      v6 = 1;
      break;
    default:
      v6 = 0;
      labelColor = 0;
      break;
  }

  if (labelColor)
  {
    v6 = 1;
  }

  *tintColor = v6;

  return labelColor;
}

+ (id)imageForPassFieldImage:(id)image hasTintColor:(BOOL)color
{
  imageCopy = image;
  v6 = imageCopy;
  if (!imageCopy)
  {
    v8 = 0;
    goto LABEL_19;
  }

  symbolName = [imageCopy symbolName];
  if (symbolName)
  {
    if ([v6 allowInternalSymbols])
    {
      [MEMORY[0x1E69DCAB8] _systemImageNamed:symbolName];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:symbolName];
    }
    v10 = ;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    image = [v6 image];
    if (image)
    {
      v10 = [MEMORY[0x1E69DCAB8] imageWithPKImage:image];
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
LABEL_10:
      if (symbolName || color)
      {
        v11 = [v10 imageWithRenderingMode:2];
      }

      else
      {
        v11 = v10;
      }

      v8 = v11;
      goto LABEL_18;
    }
  }

  v8 = 0;
LABEL_18:

LABEL_19:

  return v8;
}

@end
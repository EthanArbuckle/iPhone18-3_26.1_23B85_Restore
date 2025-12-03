@interface PKApplicationMessageIconHelpers
+ (id)imageWithDescriptor:(id)descriptor font:(id)font hasTintColor:(BOOL)color traitCollection:(id)collection symbolScale:(int64_t)scale;
+ (id)tintColorWithDescriptor:(id)descriptor hasTintColor:(BOOL *)color;
@end

@implementation PKApplicationMessageIconHelpers

+ (id)imageWithDescriptor:(id)descriptor font:(id)font hasTintColor:(BOOL)color traitCollection:(id)collection symbolScale:(int64_t)scale
{
  colorCopy = color;
  descriptorCopy = descriptor;
  fontCopy = font;
  collectionCopy = collection;
  if (!descriptorCopy)
  {
    goto LABEL_5;
  }

  type = [descriptorCopy type];
  if (type != 1)
  {
    if (!type)
    {
      v15 = MEMORY[0x1E69DCAB8];
      image = [descriptorCopy image];
      v17 = [v15 imageWithPKImage:image];
      v18 = 0;
      goto LABEL_10;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_13;
  }

  if (fontCopy)
  {
    [MEMORY[0x1E69DCAD8] configurationWithFont:fontCopy scale:scale];
  }

  else
  {
    [MEMORY[0x1E69DCAD8] configurationWithScale:scale];
  }
  v19 = ;
  image = [v19 configurationWithTraitCollection:collectionCopy];

  v20 = MEMORY[0x1E69DCAB8];
  name = [descriptorCopy name];
  v17 = [v20 _systemImageNamed:name withConfiguration:image];

  v18 = 1;
LABEL_10:

  if (v17 && (v18 | colorCopy) == 1)
  {
    v22 = [v17 imageWithRenderingMode:2];

    v17 = v22;
  }

LABEL_13:

  return v17;
}

+ (id)tintColorWithDescriptor:(id)descriptor hasTintColor:(BOOL *)color
{
  descriptorCopy = descriptor;
  v6 = descriptorCopy;
  if (descriptorCopy)
  {
    switch([descriptorCopy tintColor])
    {
      case 1:
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        goto LABEL_27;
      case 2:
        labelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        goto LABEL_27;
      case 3:
        labelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
        goto LABEL_27;
      case 4:
        labelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
        goto LABEL_27;
      case 5:
        labelColor = [MEMORY[0x1E69DC888] linkColor];
        goto LABEL_27;
      case 6:
        labelColor = [MEMORY[0x1E69DC888] placeholderTextColor];
        goto LABEL_27;
      case 7:
        labelColor = [MEMORY[0x1E69DC888] systemFillColor];
        goto LABEL_27;
      case 8:
        labelColor = [MEMORY[0x1E69DC888] secondarySystemFillColor];
        goto LABEL_27;
      case 9:
        labelColor = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
        goto LABEL_27;
      case 10:
        labelColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
        goto LABEL_27;
      case 11:
        labelColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
        goto LABEL_27;
      case 12:
        labelColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
        goto LABEL_27;
      case 13:
        labelColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
        goto LABEL_27;
      case 14:
        labelColor = [MEMORY[0x1E69DC888] systemBlueColor];
        goto LABEL_27;
      case 15:
        labelColor = [MEMORY[0x1E69DC888] systemGreenColor];
        goto LABEL_27;
      case 16:
        labelColor = [MEMORY[0x1E69DC888] systemIndigoColor];
        goto LABEL_27;
      case 17:
        labelColor = [MEMORY[0x1E69DC888] systemOrangeColor];
        goto LABEL_27;
      case 18:
        labelColor = [MEMORY[0x1E69DC888] systemPinkColor];
        goto LABEL_27;
      case 19:
        labelColor = [MEMORY[0x1E69DC888] systemPurpleColor];
        goto LABEL_27;
      case 20:
        labelColor = [MEMORY[0x1E69DC888] systemRedColor];
        goto LABEL_27;
      case 21:
        labelColor = [MEMORY[0x1E69DC888] systemTealColor];
        goto LABEL_27;
      case 22:
        labelColor = [MEMORY[0x1E69DC888] systemYellowColor];
        goto LABEL_27;
      case 23:
        labelColor = [MEMORY[0x1E69DC888] systemGrayColor];
LABEL_27:
        v8 = labelColor;
        v9 = 0;
        break;
      case 24:
        goto LABEL_4;
      default:
        v9 = 0;
        v8 = 0;
        break;
    }
  }

  else
  {
LABEL_4:
    v8 = 0;
    v9 = 1;
  }

  if (v8)
  {
    v9 = 1;
  }

  *color = v9;

  return v8;
}

@end
@interface PKApplicationMessageIconHelpers
+ (id)imageWithDescriptor:(id)a3 font:(id)a4 hasTintColor:(BOOL)a5 traitCollection:(id)a6 symbolScale:(int64_t)a7;
+ (id)tintColorWithDescriptor:(id)a3 hasTintColor:(BOOL *)a4;
@end

@implementation PKApplicationMessageIconHelpers

+ (id)imageWithDescriptor:(id)a3 font:(id)a4 hasTintColor:(BOOL)a5 traitCollection:(id)a6 symbolScale:(int64_t)a7
{
  v9 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (!v11)
  {
    goto LABEL_5;
  }

  v14 = [v11 type];
  if (v14 != 1)
  {
    if (!v14)
    {
      v15 = MEMORY[0x1E69DCAB8];
      v16 = [v11 image];
      v17 = [v15 imageWithPKImage:v16];
      v18 = 0;
      goto LABEL_10;
    }

LABEL_5:
    v17 = 0;
    goto LABEL_13;
  }

  if (v12)
  {
    [MEMORY[0x1E69DCAD8] configurationWithFont:v12 scale:a7];
  }

  else
  {
    [MEMORY[0x1E69DCAD8] configurationWithScale:a7];
  }
  v19 = ;
  v16 = [v19 configurationWithTraitCollection:v13];

  v20 = MEMORY[0x1E69DCAB8];
  v21 = [v11 name];
  v17 = [v20 _systemImageNamed:v21 withConfiguration:v16];

  v18 = 1;
LABEL_10:

  if (v17 && (v18 | v9) == 1)
  {
    v22 = [v17 imageWithRenderingMode:2];

    v17 = v22;
  }

LABEL_13:

  return v17;
}

+ (id)tintColorWithDescriptor:(id)a3 hasTintColor:(BOOL *)a4
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    switch([v5 tintColor])
    {
      case 1:
        v7 = [MEMORY[0x1E69DC888] labelColor];
        goto LABEL_27;
      case 2:
        v7 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        goto LABEL_27;
      case 3:
        v7 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
        goto LABEL_27;
      case 4:
        v7 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
        goto LABEL_27;
      case 5:
        v7 = [MEMORY[0x1E69DC888] linkColor];
        goto LABEL_27;
      case 6:
        v7 = [MEMORY[0x1E69DC888] placeholderTextColor];
        goto LABEL_27;
      case 7:
        v7 = [MEMORY[0x1E69DC888] systemFillColor];
        goto LABEL_27;
      case 8:
        v7 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
        goto LABEL_27;
      case 9:
        v7 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
        goto LABEL_27;
      case 10:
        v7 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
        goto LABEL_27;
      case 11:
        v7 = [MEMORY[0x1E69DC888] systemBackgroundColor];
        goto LABEL_27;
      case 12:
        v7 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
        goto LABEL_27;
      case 13:
        v7 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
        goto LABEL_27;
      case 14:
        v7 = [MEMORY[0x1E69DC888] systemBlueColor];
        goto LABEL_27;
      case 15:
        v7 = [MEMORY[0x1E69DC888] systemGreenColor];
        goto LABEL_27;
      case 16:
        v7 = [MEMORY[0x1E69DC888] systemIndigoColor];
        goto LABEL_27;
      case 17:
        v7 = [MEMORY[0x1E69DC888] systemOrangeColor];
        goto LABEL_27;
      case 18:
        v7 = [MEMORY[0x1E69DC888] systemPinkColor];
        goto LABEL_27;
      case 19:
        v7 = [MEMORY[0x1E69DC888] systemPurpleColor];
        goto LABEL_27;
      case 20:
        v7 = [MEMORY[0x1E69DC888] systemRedColor];
        goto LABEL_27;
      case 21:
        v7 = [MEMORY[0x1E69DC888] systemTealColor];
        goto LABEL_27;
      case 22:
        v7 = [MEMORY[0x1E69DC888] systemYellowColor];
        goto LABEL_27;
      case 23:
        v7 = [MEMORY[0x1E69DC888] systemGrayColor];
LABEL_27:
        v8 = v7;
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

  *a4 = v9;

  return v8;
}

@end
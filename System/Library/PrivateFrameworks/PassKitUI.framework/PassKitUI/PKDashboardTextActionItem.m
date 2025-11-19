@interface PKDashboardTextActionItem
+ (id)colorForSemanticColor:(int64_t)a3 hasTintColor:(BOOL *)a4;
+ (id)imageForPassFieldImage:(id)a3 hasTintColor:(BOOL)a4;
@end

@implementation PKDashboardTextActionItem

+ (id)colorForSemanticColor:(int64_t)a3 hasTintColor:(BOOL *)a4
{
  switch(a3)
  {
    case 1:
      v5 = [MEMORY[0x1E69DC888] labelColor];
      goto LABEL_25;
    case 2:
      v5 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      goto LABEL_25;
    case 3:
      v5 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
      goto LABEL_25;
    case 4:
      v5 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
      goto LABEL_25;
    case 5:
      v5 = [MEMORY[0x1E69DC888] linkColor];
      goto LABEL_25;
    case 6:
      v5 = [MEMORY[0x1E69DC888] placeholderTextColor];
      goto LABEL_25;
    case 7:
      v5 = [MEMORY[0x1E69DC888] systemFillColor];
      goto LABEL_25;
    case 8:
      v5 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
      goto LABEL_25;
    case 9:
      v5 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
      goto LABEL_25;
    case 10:
      v5 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
      goto LABEL_25;
    case 11:
      v5 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
      goto LABEL_25;
    case 12:
      v5 = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
      goto LABEL_25;
    case 13:
      v5 = [MEMORY[0x1E69DC888] tertiarySystemGroupedBackgroundColor];
      goto LABEL_25;
    case 14:
      v5 = [MEMORY[0x1E69DC888] systemBlueColor];
      goto LABEL_25;
    case 15:
      v5 = [MEMORY[0x1E69DC888] systemGreenColor];
      goto LABEL_25;
    case 16:
      v5 = [MEMORY[0x1E69DC888] systemIndigoColor];
      goto LABEL_25;
    case 17:
      v5 = [MEMORY[0x1E69DC888] systemOrangeColor];
      goto LABEL_25;
    case 18:
      v5 = [MEMORY[0x1E69DC888] systemPinkColor];
      goto LABEL_25;
    case 19:
      v5 = [MEMORY[0x1E69DC888] systemPurpleColor];
      goto LABEL_25;
    case 20:
      v5 = [MEMORY[0x1E69DC888] systemRedColor];
      goto LABEL_25;
    case 21:
      v5 = [MEMORY[0x1E69DC888] systemTealColor];
      goto LABEL_25;
    case 22:
      v5 = [MEMORY[0x1E69DC888] systemYellowColor];
      goto LABEL_25;
    case 23:
      v5 = [MEMORY[0x1E69DC888] systemGrayColor];
LABEL_25:
      v6 = 0;
      break;
    case 24:
      v5 = 0;
      v6 = 1;
      break;
    default:
      v6 = 0;
      v5 = 0;
      break;
  }

  if (v5)
  {
    v6 = 1;
  }

  *a4 = v6;

  return v5;
}

+ (id)imageForPassFieldImage:(id)a3 hasTintColor:(BOOL)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v8 = 0;
    goto LABEL_19;
  }

  v7 = [v5 symbolName];
  if (v7)
  {
    if ([v6 allowInternalSymbols])
    {
      [MEMORY[0x1E69DCAB8] _systemImageNamed:v7];
    }

    else
    {
      [MEMORY[0x1E69DCAB8] systemImageNamed:v7];
    }
    v10 = ;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = [v6 image];
    if (v9)
    {
      v10 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v9];
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
LABEL_10:
      if (v7 || a4)
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
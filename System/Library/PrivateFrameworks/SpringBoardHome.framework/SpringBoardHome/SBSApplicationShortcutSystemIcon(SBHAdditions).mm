@interface SBSApplicationShortcutSystemIcon(SBHAdditions)
+ (id)sbh_defaultImage;
- (id)sbh_image;
- (id)sbh_systemImage;
@end

@implementation SBSApplicationShortcutSystemIcon(SBHAdditions)

+ (id)sbh_defaultImage
{
  if (sbh_defaultImage_onceToken != -1)
  {
    +[SBSApplicationShortcutSystemIcon(SBHAdditions) sbh_defaultImage];
  }

  v1 = sbh_defaultImage___defaultImage;

  return v1;
}

- (id)sbh_systemImage
{
  v1 = [a1 type];
  if (v1 > 0x1C)
  {
    v4 = 0;
  }

  else
  {
    v2 = [off_1E8089098[v1] unsignedIntegerValue];
    if (v2 > 0x1C)
    {
      v3 = 0;
    }

    else
    {
      v3 = off_1E8089180[v2];
    }

    v4 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3];
  }

  return v4;
}

- (id)sbh_image
{
  v1 = @"ComposeNew";
  switch([a1 type])
  {
    case 0:
      break;
    case 1:
      v1 = @"Play";
      break;
    case 2:
      v1 = @"Pause";
      break;
    case 3:
      v1 = @"Add";
      break;
    case 4:
      v1 = @"Location";
      break;
    case 5:
      v1 = @"Search";
      break;
    case 6:
      v1 = @"Share";
      break;
    case 7:
      v1 = @"Prohibit";
      break;
    case 8:
      v1 = @"Contact";
      break;
    case 9:
      v1 = @"Home";
      break;
    case 10:
      v1 = @"MarkLocation";
      break;
    case 11:
      v1 = @"Favorite";
      break;
    case 12:
      v1 = @"Love";
      break;
    case 13:
      v1 = @"Cloud";
      break;
    case 14:
      v1 = @"Invitation";
      break;
    case 15:
      v1 = @"Confirmation";
      break;
    case 16:
      v1 = @"Mail";
      break;
    case 17:
      v1 = @"Message";
      break;
    case 18:
      v1 = @"Date";
      break;
    case 19:
      v1 = @"Time";
      break;
    case 20:
      v1 = @"CapturePhoto";
      break;
    case 21:
      v1 = @"CaptureVideo";
      break;
    case 22:
      v1 = @"Task";
      break;
    case 23:
      v1 = @"TaskCompleted";
      break;
    case 24:
      v1 = @"Alarm";
      break;
    case 25:
      v1 = @"Bookmark";
      break;
    case 26:
      v1 = @"Shuffle";
      break;
    case 27:
      v1 = @"Audio";
      break;
    case 28:
      v1 = @"Update";
      break;
    case 29:
      v1 = @"rectangle.grid.2x2";
      break;
    case 30:
      v2 = [MEMORY[0x1E69DC938] currentDevice];
      v3 = [v2 userInterfaceIdiom];

      if ((v3 & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v1 = @"apps.ipad.landscape";
      }

      else
      {
        v1 = @"apps.iphone";
      }

      break;
    case 31:
      v1 = @"trash";
      break;
    case 32:
      v1 = @"minus.circle";
      break;
    case 33:
      v1 = @"text.insert";
      break;
    default:
      v1 = @"UnreadDot";
      break;
  }

  v4 = MEMORY[0x1E69DCAB8];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBSApplicationShortcutSystemIcon_%@", v1];
  v6 = SBHBundle();
  v7 = [v4 imageNamed:v5 inBundle:v6 compatibleWithTraitCollection:0];

  if (!v7)
  {
    v8 = [MEMORY[0x1E69DCAB8] systemImageNamed:v1];
    if (v8 || ([MEMORY[0x1E69DCAB8] _systemImageNamed:v1], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v7 = v8;
    }

    else
    {
      v10 = MEMORY[0x1E69DCAB8];
      v11 = SBHBundle();
      v7 = [v10 imageNamed:v1 inBundle:v11 compatibleWithTraitCollection:0];

      if (!v7)
      {
        v12 = MEMORY[0x1E69DCAB8];
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SBSApplicationShortcutSystemIcon_%@", @"UnreadDot"];
        v14 = SBHBundle();
        v7 = [v12 imageNamed:v13 inBundle:v14 compatibleWithTraitCollection:0];
      }
    }
  }

  return v7;
}

@end
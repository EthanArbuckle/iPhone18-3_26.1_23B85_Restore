@interface PXGSpritesRectDiagnosticsProvider
- (void)enumerateRectDiagnosticsForLayout:(id)a3 usingBlock:(id)a4;
@end

@implementation PXGSpritesRectDiagnosticsProvider

- (void)enumerateRectDiagnosticsForLayout:(id)a3 usingBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[PXTungstenSettings sharedInstance];
  if ([v7 anySpritesRectDiagnosticsEnabled])
  {
    [v5 visibleRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __82__PXGSpritesRectDiagnosticsProvider_enumerateRectDiagnosticsForLayout_usingBlock___block_invoke;
    v16[3] = &unk_2782A99B8;
    v17 = v7;
    v18 = v6;
    [v5 enumerateSpritesInRect:v16 usingBlock:{v9, v11, v13, v15}];
  }
}

void __82__PXGSpritesRectDiagnosticsProvider_enumerateRectDiagnosticsForLayout_usingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v30 = a7;
  v12 = 0;
  v13 = *(a6 + 1);
  if (v13 > 5)
  {
    if (*(a6 + 1) > 9u)
    {
      switch(v13)
      {
        case 0xAu:
          if ([*(a1 + 32) enableRectDiagnosticsForViewSprites])
          {
            v14 = [MEMORY[0x277D75348] brownColor];
            goto LABEL_39;
          }

          break;
        case 0xBu:
          if ([*(a1 + 32) enableRectDiagnosticsForPathSprites])
          {
            v14 = [MEMORY[0x277D75348] systemPinkColor];
            goto LABEL_39;
          }

          break;
        case 0xCu:
          if ([*(a1 + 32) enableRectDiagnosticsForPathSprites])
          {
            v14 = [MEMORY[0x277D75348] systemMintColor];
            goto LABEL_39;
          }

          break;
        default:
          goto LABEL_41;
      }
    }

    else
    {
      switch(v13)
      {
        case 6u:
          if ([*(a1 + 32) enableRectDiagnosticsForGradientSprites])
          {
            v14 = [MEMORY[0x277D75348] yellowColor];
            goto LABEL_39;
          }

          break;
        case 7u:
          if ([*(a1 + 32) enableRectDiagnosticsForShadowSprites])
          {
            v14 = [MEMORY[0x277D75348] magentaColor];
            goto LABEL_39;
          }

          break;
        case 8u:
          if ([*(a1 + 32) enableRectDiagnosticsForDecorationSprites])
          {
            v14 = [MEMORY[0x277D75348] darkGrayColor];
            goto LABEL_39;
          }

          break;
        default:
          goto LABEL_41;
      }
    }
  }

  else if (*(a6 + 1) > 2u)
  {
    switch(v13)
    {
      case 3u:
        if ([*(a1 + 32) enableRectDiagnosticsForTextSprites])
        {
          v14 = [MEMORY[0x277D75348] orangeColor];
          goto LABEL_39;
        }

        break;
      case 4u:
        if ([*(a1 + 32) enableRectDiagnosticsForTitleSubtitleSprites])
        {
          v14 = [MEMORY[0x277D75348] purpleColor];
          goto LABEL_39;
        }

        break;
      case 5u:
        if ([*(a1 + 32) enableRectDiagnosticsForSolidColorSprites])
        {
          v14 = [MEMORY[0x277D75348] redColor];
          goto LABEL_39;
        }

        break;
      default:
        goto LABEL_41;
    }
  }

  else if (*(a6 + 1))
  {
    if (v13 == 1)
    {
      if ([*(a1 + 32) enableRectDiagnosticsForNamedImageSprites])
      {
        v14 = [MEMORY[0x277D75348] blueColor];
        goto LABEL_39;
      }
    }

    else if ([*(a1 + 32) enableRectDiagnosticsForDisplayAssetSprites])
    {
      v14 = [MEMORY[0x277D75348] cyanColor];
LABEL_39:
      v12 = v14;
      goto LABEL_41;
    }
  }

  else if ([*(a1 + 32) enableRectDiagnosticsForUndefinedSprites])
  {
    v14 = [MEMORY[0x277D75348] lightGrayColor];
    goto LABEL_39;
  }

  v12 = 0;
LABEL_41:
  PXRectWithCenterAndSize();
  if (v12)
  {
    v19 = v15;
    v20 = v16;
    v21 = v17;
    v22 = v18;
    v23 = *(a6 + 1);
    if (v23 > 0xC)
    {
      v24 = @"unexpected";
    }

    else
    {
      v24 = off_2782A9C70[v23];
    }

    v25 = v24;
    if (*(a6 + 34))
    {
      v26 = PXGSpriteInfoFlagsDescription(*(a6 + 34));
      v27 = [(__CFString *)v25 stringByAppendingFormat:@" %@", v26];

      v25 = v27;
    }

    v28 = *(a1 + 40);
    v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Sprite #%u (%@)", a2, v25];
    (*(v28 + 16))(v28, v12, v29, a9, v19, v20, v21, v22);
  }
}

@end
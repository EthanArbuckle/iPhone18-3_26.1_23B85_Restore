@interface UIStatusBarDataNetworkItemView
- (BOOL)_updateWithData:(id *)a3 networkType:(int)a4;
- (BOOL)updateForNewData:(id)a3 actions:(int)a4;
- (double)extraLeftPadding;
- (double)extraRightPadding;
- (double)maximumOverlap;
- (id)_dataNetworkImage;
- (id)_dataNetworkImageName;
- (id)accessibilityHUDRepresentation;
- (id)contentsImage;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation UIStatusBarDataNetworkItemView

- (double)extraLeftPadding
{
  v10.receiver = self;
  v10.super_class = UIStatusBarDataNetworkItemView;
  [(UIStatusBarItemView *)&v10 extraLeftPadding];
  v4 = v3;
  v5 = [(UIStatusBarItemView *)self foregroundStyle];
  v6 = [v5 usesVerticalLayout];

  dataNetworkType = self->_dataNetworkType;
  if (v6)
  {
    if (dataNetworkType != 5)
    {
      return v4 + -3.0;
    }
  }

  else if (dataNetworkType != 5)
  {
    if (dataNetworkType == 6)
    {
      v8 = 1.0;
    }

    else
    {
      v8 = 4.0;
    }

    return v4 + v8;
  }

  return v4;
}

- (double)extraRightPadding
{
  v8.receiver = self;
  v8.super_class = UIStatusBarDataNetworkItemView;
  [(UIStatusBarItemView *)&v8 extraRightPadding];
  v4 = v3;
  v5 = [(UIStatusBarItemView *)self foregroundStyle];
  v6 = [v5 usesVerticalLayout];

  if (v6 && self->_dataNetworkType != 5)
  {
    return v4 + -3.0;
  }

  return v4;
}

- (double)maximumOverlap
{
  v3 = [(UIStatusBarItemView *)self foregroundStyle];
  v4 = [v3 usesVerticalLayout];

  if (v4)
  {
    return 0.0;
  }

  [(UIStatusBarItemView *)self standardPadding];
  return result;
}

- (BOOL)updateForNewData:(id)a3 actions:(int)a4
{
  v5 = [a3 rawData];
  v6 = *(v5 + 2096);

  return [(UIStatusBarDataNetworkItemView *)self _updateWithData:v5 networkType:v6];
}

- (BOOL)_updateWithData:(id *)a3 networkType:(int)a4
{
  v5 = *(a3 + 3149);
  var18 = a3->var18;
  if (a3->var19 >= 3)
  {
    var19 = 3;
  }

  else
  {
    var19 = a3->var19;
  }

  v8 = *(a3 + 2529);
  v9 = (v8 >> 2) & 1;
  showRSSI = self->_showRSSI;
  dataNetworkType = self->_dataNetworkType;
  v12 = dataNetworkType != a4;
  if (dataNetworkType != a4)
  {
    self->_dataNetworkType = a4;
  }

  if (v9 == self->_enableRSSI)
  {
    if (!showRSSI)
    {
      goto LABEL_12;
    }

LABEL_11:
    v15 = (a4 - 5) < 2;
    goto LABEL_13;
  }

  v13 = v8 & 4;
  v14 = v13 >> 2;
  self->_enableRSSI = v9;
  [(UIView *)self setUserInteractionEnabled:v13 != 0];
  if (v14 == 1)
  {
    a4 = self->_dataNetworkType;
    goto LABEL_11;
  }

LABEL_12:
  v15 = 0;
LABEL_13:
  v16 = self->_showRSSI;
  if (v16 != v15)
  {
    self->_showRSSI = v15;
    v12 = 1;
    LOBYTE(v16) = v15;
  }

  v17 = var19 & ~(var19 >> 31);
  if (var18 != self->_wifiStrengthRaw)
  {
    self->_wifiStrengthRaw = var18;
    v12 |= v16;
  }

  if (v17 != self->_wifiStrengthBars)
  {
    self->_wifiStrengthBars = v17;
    v18 = v16 ^ 1;
    if (self->_dataNetworkType != 5)
    {
      v18 = 0;
    }

    v12 |= v18;
  }

  if (((v5 >> 3) & 1) != self->_wifiLinkWarning)
  {
    self->_wifiLinkWarning = (v5 & 8) != 0;
    return 1;
  }

  return v12;
}

- (id)contentsImage
{
  v3 = [(UIStatusBarItemView *)self foregroundStyle];
  v4 = [v3 textForNetworkType:self->_dataNetworkType];

  if (self->_showRSSI || v4)
  {
    if (self->_showRSSI)
    {
      v6 = [(UIStatusBarDataNetworkItemView *)self _stringForRSSI];
    }

    else
    {
      v6 = v4;
    }

    v7 = v6;
    v5 = [(UIStatusBarItemView *)self imageWithText:v6];
  }

  else
  {
    v5 = [(UIStatusBarDataNetworkItemView *)self _dataNetworkImage];
  }

  return v5;
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (self->_enableRSSI && (self->_dataNetworkType - 5) <= 1)
  {
    self->_showRSSI ^= 1u;
    [(UIStatusBarItemView *)self updateContentsAndWidth];
    if (v8 != 0.0)
    {
      v9 = v8;
      v10 = [(UIStatusBarItemView *)self layoutManager];
      [v10 itemView:self sizeChangedBy:v9];
    }
  }

  v11.receiver = self;
  v11.super_class = UIStatusBarDataNetworkItemView;
  [(UIResponder *)&v11 touchesEnded:v6 withEvent:v7];
}

- (id)_dataNetworkImageName
{
  v4 = 0;
  dataNetworkType = self->_dataNetworkType;
  if (dataNetworkType <= 2)
  {
    if (dataNetworkType)
    {
      if (dataNetworkType == 1)
      {
        v4 = @"DataTypeEDGE";
      }

      else
      {
        if (dataNetworkType != 2)
        {
          goto LABEL_22;
        }

        v4 = @"DataTypeUMTS";
      }
    }

    else
    {
      v4 = @"DataTypeGPRS";
    }
  }

  else
  {
    if (dataNetworkType <= 4)
    {
      if (dataNetworkType != 3)
      {
        v4 = @"DataTypeLTE";

        return v4;
      }

      v4 = @"DataType4G";
      goto LABEL_22;
    }

    if (dataNetworkType != 5)
    {
      if (dataNetworkType == 6)
      {
        v4 = @"DataTypeiOSHotspot";

        return v4;
      }

LABEL_22:

      return v4;
    }

    if (self->_wifiLinkWarning)
    {
      v4 = @"WiFiWarning";
    }

    else
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d_WifiBars", self->_wifiStrengthBars];
    }
  }

  return v4;
}

- (id)_dataNetworkImage
{
  v3 = [(UIStatusBarDataNetworkItemView *)self _dataNetworkImageName];
  v4 = [(UIStatusBarItemView *)self imageWithShadowNamed:v3];

  return v4;
}

- (id)accessibilityHUDRepresentation
{
  v3 = [(UIStatusBarItemView *)self foregroundStyle];
  v4 = [v3 textForNetworkType:self->_dataNetworkType];

  if (v4)
  {
    goto LABEL_15;
  }

  dataNetworkType = self->_dataNetworkType;
  if (dataNetworkType <= 7)
  {
    if (dataNetworkType)
    {
      if (dataNetworkType != 4)
      {
        goto LABEL_19;
      }

      v6 = @"LTE";
    }

    else
    {
      v6 = @"GPRS";
    }
  }

  else
  {
    switch(dataNetworkType)
    {
      case 8:
        v6 = @"5GE";
        v7 = @"5G   ";
        goto LABEL_14;
      case 9:
        v6 = @"LTE-A";
        break;
      case 10:
        v6 = @"LTE+";
        break;
      default:
        goto LABEL_19;
    }
  }

  v7 = v6;
LABEL_14:
  v4 = _UINSLocalizedStringWithDefaultValue(v6, v7);
  if (v4)
  {
LABEL_15:
    v8 = [[UIAccessibilityHUDItem alloc] initWithTitle:v4 image:0 imageInsets:0.0, 0.0, 0.0, 0.0];
    goto LABEL_16;
  }

LABEL_19:
  v11 = [(UIStatusBarItemView *)self foregroundStyle];
  v12 = [(UIStatusBarDataNetworkItemView *)self _dataNetworkImageName];
  v4 = [v11 accessibilityHUDImageNamed:v12];

  v8 = [[UIAccessibilityHUDItem alloc] initWithTitle:0 image:v4 imageInsets:1 scaleImage:0.0, 0.0, 0.0, 0.0];
LABEL_16:
  v9 = v8;

  return v9;
}

@end
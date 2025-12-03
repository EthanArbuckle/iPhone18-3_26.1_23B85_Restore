@interface PSAccessoryInfoHeaderView
- (PSAccessoryInfoHeaderView)initWithDevice:(id)device insets:(UIEdgeInsets)insets;
@end

@implementation PSAccessoryInfoHeaderView

- (PSAccessoryInfoHeaderView)initWithDevice:(id)device insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v75 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v71.receiver = self;
  v71.super_class = PSAccessoryInfoHeaderView;
  v10 = [(PSAccessoryInfoHeaderView *)&v71 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  [(PSAccessoryInfoHeaderView *)v10 setLayoutMargins:top, left, bottom, right];
  v11 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"dot.radiowaves.left.and.right"];
  v13 = [v11 initWithImage:v12];
  imageView = v10->_imageView;
  v10->_imageView = v13;

  v15 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:100.0];
  [(UIImageView *)v10->_imageView setPreferredSymbolConfiguration:v15];

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(UIImageView *)v10->_imageView setTintColor:systemBlueColor];

  v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  displayNameLabel = v10->_displayNameLabel;
  v10->_displayNameLabel = v17;

  v19 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:24.0];
  [(UILabel *)v10->_displayNameLabel setFont:v19];

  discoveryConfiguration = [deviceCopy discoveryConfiguration];
  displayName = [discoveryConfiguration displayName];
  [(UILabel *)v10->_displayNameLabel setText:displayName];

  [(UILabel *)v10->_displayNameLabel setTextAlignment:1];
  [(UILabel *)v10->_displayNameLabel setNumberOfLines:0];
  v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  otaNameLabel = v10->_otaNameLabel;
  v10->_otaNameLabel = v22;

  v24 = [MEMORY[0x1E69DB878] systemFontOfSize:16.0];
  [(UILabel *)v10->_otaNameLabel setFont:v24];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v10->_otaNameLabel setTextColor:secondaryLabelColor];

  v66 = deviceCopy;
  name = [deviceCopy name];
  [(UILabel *)v10->_otaNameLabel setText:name];

  [(UILabel *)v10->_otaNameLabel setTextAlignment:1];
  [(UILabel *)v10->_otaNameLabel setNumberOfLines:0];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v73[0] = v10->_imageView;
  v73[1] = v10->_displayNameLabel;
  v73[2] = v10->_otaNameLabel;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:3];
  v28 = [v27 countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v68;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v68 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v67 + 1) + 8 * i);
        [v32 setTranslatesAutoresizingMaskIntoConstraints:0];
        [(PSAccessoryInfoHeaderView *)v10 addSubview:v32];
      }

      v29 = [v27 countByEnumeratingWithState:&v67 objects:v74 count:16];
    }

    while (v29);
  }

  v55 = MEMORY[0x1E696ACD8];
  topAnchor = [(UIImageView *)v10->_imageView topAnchor];
  topAnchor2 = [(PSAccessoryInfoHeaderView *)v10 topAnchor];
  [(PSAccessoryInfoHeaderView *)v10 layoutMargins];
  v63 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
  v72[0] = v63;
  centerXAnchor = [(UIImageView *)v10->_imageView centerXAnchor];
  centerXAnchor2 = [(PSAccessoryInfoHeaderView *)v10 centerXAnchor];
  v60 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v72[1] = v60;
  topAnchor3 = [(UILabel *)v10->_displayNameLabel topAnchor];
  bottomAnchor = [(UIImageView *)v10->_imageView bottomAnchor];
  v57 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:10.0];
  v72[2] = v57;
  centerXAnchor3 = [(UILabel *)v10->_displayNameLabel centerXAnchor];
  centerXAnchor4 = [(PSAccessoryInfoHeaderView *)v10 centerXAnchor];
  v53 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v72[3] = v53;
  leadingAnchor = [(UILabel *)v10->_displayNameLabel leadingAnchor];
  leadingAnchor2 = [(PSAccessoryInfoHeaderView *)v10 leadingAnchor];
  [(PSAccessoryInfoHeaderView *)v10 layoutMargins];
  v50 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:v33];
  v72[4] = v50;
  topAnchor4 = [(UILabel *)v10->_otaNameLabel topAnchor];
  bottomAnchor2 = [(UILabel *)v10->_displayNameLabel bottomAnchor];
  v47 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:10.0];
  v72[5] = v47;
  centerXAnchor5 = [(UILabel *)v10->_otaNameLabel centerXAnchor];
  centerXAnchor6 = [(PSAccessoryInfoHeaderView *)v10 centerXAnchor];
  v35 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v72[6] = v35;
  leadingAnchor3 = [(UILabel *)v10->_otaNameLabel leadingAnchor];
  leadingAnchor4 = [(PSAccessoryInfoHeaderView *)v10 leadingAnchor];
  [(PSAccessoryInfoHeaderView *)v10 layoutMargins];
  v39 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:v38];
  v72[7] = v39;
  bottomAnchor3 = [(UILabel *)v10->_otaNameLabel bottomAnchor];
  bottomAnchor4 = [(PSAccessoryInfoHeaderView *)v10 bottomAnchor];
  [(PSAccessoryInfoHeaderView *)v10 layoutMargins];
  v43 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4 constant:-v42];
  v72[8] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:9];
  [v55 activateConstraints:v44];

  return v10;
}

@end
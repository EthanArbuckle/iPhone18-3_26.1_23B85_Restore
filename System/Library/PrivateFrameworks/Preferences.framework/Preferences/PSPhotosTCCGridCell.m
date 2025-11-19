@interface PSPhotosTCCGridCell
- (PSPhotosTCCGridCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation PSPhotosTCCGridCell

- (PSPhotosTCCGridCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v44[4] = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = PSPhotosTCCGridCell;
  v35 = a4;
  v36 = [(PSTableCell *)&v38 initWithStyle:a3 reuseIdentifier:?];
  if (v36)
  {
    v37 = [(PSPhotosTCCGridCell *)v36 contentView];
    [(PSPhotosTCCGridCell *)v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v5 setAxis:1];
    [v37 addSubview:v5];
    v30 = MEMORY[0x1E696ACD8];
    v34 = [v5 topAnchor];
    v33 = [v37 topAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:16.0];
    v44[0] = v32;
    v31 = [v5 leadingAnchor];
    v6 = [v37 leadingAnchor];
    v7 = [v31 constraintEqualToAnchor:v6 constant:16.0];
    v44[1] = v7;
    v8 = [v37 trailingAnchor];
    v9 = [v5 trailingAnchor];
    v10 = [v8 constraintEqualToAnchor:v9 constant:16.0];
    v44[2] = v10;
    v11 = [v37 bottomAnchor];
    v12 = [v5 bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:12.0];
    v44[3] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:4];
    [v30 activateConstraints:v14];

    v40 = 0;
    v41 = &v40;
    v42 = 0x2050000000;
    v15 = getPXTCCPhotoGridViewClass_softClass;
    v43 = getPXTCCPhotoGridViewClass_softClass;
    if (!getPXTCCPhotoGridViewClass_softClass)
    {
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __getPXTCCPhotoGridViewClass_block_invoke;
      v39[3] = &unk_1E71DBC78;
      v39[4] = &v40;
      __getPXTCCPhotoGridViewClass_block_invoke(v39);
      v15 = v41[3];
    }

    v16 = v15;
    _Block_object_dispose(&v40, 8);
    if (v15)
    {
      v17 = [v15 photoGridViewForSettings];
      v18 = v17;
      if (v17)
      {
        v19 = [v17 layer];
        [v19 setCornerRadius:6.0];

        [v18 setClipsToBounds:1];
        [v5 addArrangedSubview:v18];
        [v5 setCustomSpacing:v18 afterView:12.0];
      }
    }

    v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v21 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [v20 setFont:v21];

    [v20 setNumberOfLines:0];
    if (PhotosUICoreLibraryCore_0() && getPXTCCSettingsGridTitleSymbolLoc())
    {
      PXTCCSettingsGridTitleSymbolLoc = getPXTCCSettingsGridTitleSymbolLoc();
      if (!PXTCCSettingsGridTitleSymbolLoc)
      {
        goto LABEL_18;
      }

      v23 = PXTCCSettingsGridTitleSymbolLoc();
      [v20 setText:v23];
    }

    [v5 addArrangedSubview:v20];
    [v5 setCustomSpacing:v20 afterView:2.0];
    v24 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v25 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    [v24 setFont:v25];

    v26 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [v24 setTextColor:v26];

    [v24 setNumberOfLines:0];
    if (!PhotosUICoreLibraryCore_0() || !getPXTCCSettingsGridSubtitleSymbolLoc())
    {
      goto LABEL_16;
    }

    PXTCCSettingsGridSubtitleSymbolLoc = getPXTCCSettingsGridSubtitleSymbolLoc();
    if (PXTCCSettingsGridSubtitleSymbolLoc)
    {
      v28 = PXTCCSettingsGridSubtitleSymbolLoc();
      [v24 setText:v28];

LABEL_16:
      [v5 addArrangedSubview:v24];

      goto LABEL_17;
    }

LABEL_18:
    [PSContactsAuthorizationLevelController dealloc];
    __break(1u);
  }

LABEL_17:

  return v36;
}

@end
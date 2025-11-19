@interface PKPassSemanticBoardingPassFaceView
- (BOOL)flushFormattedFieldValues;
- (BOOL)flushPassStateFieldValues;
- (id)_footerImageGlyphIfExists;
- (id)_transitGlyphForTransitType:(int64_t)a3;
- (id)fetchRelevantBuckets;
- (void)createBodyContentViews;
- (void)createHeaderContentViews;
- (void)layoutSubviews;
- (void)setShowsBarcodeView:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation PKPassSemanticBoardingPassFaceView

- (id)fetchRelevantBuckets
{
  v12[4] = *MEMORY[0x1E69E9840];
  v3 = [(PKPassFaceView *)self pass];
  v4 = [(PKPassFaceView *)self passState];
  v5 = [[PKBoardingPassFaceBucketsFactory alloc] initWithPass:v3 state:v4];
  v6 = [(PKBoardingPassFaceBucketsFactory *)v5 headerFields];
  v12[0] = v6;
  v7 = [(PKBoardingPassFaceBucketsFactory *)v5 primaryFields];
  v12[1] = v7;
  v8 = [(PKBoardingPassFaceBucketsFactory *)v5 secondaryFields];
  v12[2] = v8;
  v9 = [(PKBoardingPassFaceBucketsFactory *)v5 auxiliaryFields];
  v12[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:4];

  return v10;
}

- (BOOL)flushFormattedFieldValues
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke;
  aBlock[3] = &unk_1E80190C0;
  aBlock[4] = &v25;
  v3 = _Block_copy(aBlock);
  v4 = [(PKPassFaceView *)self pass];
  v5 = [(PKPassFaceView *)self passState];
  v6 = [[PKBoardingPassFaceBucketsFactory alloc] initWithPass:v4 state:v5];
  v7 = [(PKBoardingPassFaceBucketsFactory *)v6 headerFields];
  v8 = [(PKPassFaceView *)self buckets];
  v9 = [v8 objectAtIndexedSubscript:0];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke_2;
  v21[3] = &unk_1E80190E8;
  v10 = v7;
  v22 = v10;
  v11 = v3;
  v23 = v11;
  [v9 enumerateObjectsUsingBlock:v21];
  v12 = [(PKBoardingPassFaceBucketsFactory *)v6 auxiliaryFields];
  v13 = [(PKPassFaceView *)self buckets];
  v14 = [v13 objectAtIndexedSubscript:3];

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke_3;
  v18[3] = &unk_1E80190E8;
  v15 = v12;
  v19 = v15;
  v16 = v11;
  v20 = v16;
  [v14 enumerateObjectsUsingBlock:v18];
  LOBYTE(v11) = *(v26 + 24);

  _Block_object_dispose(&v25, 8);
  return v11;
}

void __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v5 label];
  v7 = [v5 value];
  v8 = [v18 label];
  v9 = v6;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v8)
  {

    goto LABEL_8;
  }

  v11 = [v8 isEqualToString:v9];

  if ((v11 & 1) == 0)
  {
LABEL_8:
    [v18 setLabel:v10];
    v12 = [v5 accessibilityLabel];
    [v18 setAccessibilityLabel:v12];

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_9:
  v13 = [v18 value];
  v14 = v7;
  v15 = v14;
  if (v13 == v14)
  {

    goto LABEL_17;
  }

  if (!v14 || !v13)
  {

    goto LABEL_16;
  }

  v16 = [v13 isEqualToString:v14];

  if ((v16 & 1) == 0)
  {
LABEL_16:
    [v18 setUnformattedValue:v15];
    v17 = [v5 accessibilityValue];
    [v18 setAccessibilityValue:v17];

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_17:
}

void __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

void __63__PKPassSemanticBoardingPassFaceView_flushFormattedFieldValues__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

- (BOOL)flushPassStateFieldValues
{
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke;
  aBlock[3] = &unk_1E80190C0;
  aBlock[4] = &v35;
  v3 = _Block_copy(aBlock);
  v4 = [(PKPassFaceView *)self pass];
  v24 = [(PKPassFaceView *)self passState];
  v5 = [[PKBoardingPassFaceBucketsFactory alloc] initWithPass:v4 state:v24];
  v6 = [(PKBoardingPassFaceBucketsFactory *)v5 headerFields];
  v7 = [(PKPassFaceView *)self buckets];
  v8 = [v7 objectAtIndexedSubscript:0];

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_2;
  v31[3] = &unk_1E80190E8;
  v9 = v6;
  v32 = v9;
  v10 = v3;
  v33 = v10;
  [v8 enumerateObjectsUsingBlock:v31];
  v23 = v8;
  v11 = [(PKBoardingPassFaceBucketsFactory *)v5 primaryFields];
  v12 = [(PKPassFaceView *)self buckets];
  v13 = [v12 objectAtIndexedSubscript:1];

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_3;
  v28[3] = &unk_1E80190E8;
  v14 = v11;
  v29 = v14;
  v15 = v10;
  v30 = v15;
  [v13 enumerateObjectsUsingBlock:v28];
  v16 = v4;
  v17 = [(PKBoardingPassFaceBucketsFactory *)v5 auxiliaryFields];
  v18 = [(PKPassFaceView *)self buckets];
  v19 = [v18 objectAtIndexedSubscript:3];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_4;
  v25[3] = &unk_1E80190E8;
  v20 = v17;
  v26 = v20;
  v21 = v15;
  v27 = v21;
  [v19 enumerateObjectsUsingBlock:v25];
  LOBYTE(v15) = *(v36 + 24);

  _Block_object_dispose(&v35, 8);
  return v15;
}

void __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = [v5 label];
  v7 = [v5 value];
  v8 = [v18 label];
  v9 = v6;
  v10 = v9;
  if (v8 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v8)
  {

    goto LABEL_8;
  }

  v11 = [v8 isEqualToString:v9];

  if ((v11 & 1) == 0)
  {
LABEL_8:
    [v18 setLabel:v10];
    v12 = [v5 accessibilityLabel];
    [v18 setAccessibilityLabel:v12];

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_9:
  v13 = [v18 value];
  v14 = v7;
  v15 = v14;
  if (v13 == v14)
  {

    goto LABEL_17;
  }

  if (!v14 || !v13)
  {

    goto LABEL_16;
  }

  v16 = [v13 isEqualToString:v14];

  if ((v16 & 1) == 0)
  {
LABEL_16:
    [v18 setUnformattedValue:v15];
    v17 = [v5 accessibilityValue];
    [v18 setAccessibilityValue:v17];

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

LABEL_17:
}

void __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

void __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

void __63__PKPassSemanticBoardingPassFaceView_flushPassStateFieldValues__block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a3];
  (*(*(a1 + 40) + 16))();
}

- (void)createHeaderContentViews
{
  v36.receiver = self;
  v36.super_class = PKPassSemanticBoardingPassFaceView;
  [(PKPassFrontFaceView *)&v36 createHeaderContentViews];
  v3 = [(PKPassFaceView *)self style];
  v4 = [(PKPassFaceView *)self pass];
  v5 = [(PKPassFaceView *)self colorProfile];
  v6 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v35 = v4;
  v7 = [v4 logoText];
  PKPassFaceLogoRect();
  IsEmpty = CGRectIsEmpty(v37);
  v9 = MEMORY[0x1E69DB958];
  if (!IsEmpty && (v3 - 9) <= 1 && v7)
  {
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    logoLabel = self->_logoLabel;
    self->_logoLabel = v10;

    v12 = self->_logoLabel;
    v13 = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v12 setBackgroundColor:v13];

    [(UILabel *)self->_logoLabel setLineBreakMode:4];
    [(UILabel *)self->_logoLabel setNumberOfLines:1];
    [(UILabel *)self->_logoLabel setTextAlignment:0];
    v14 = self->_logoLabel;
    v15 = PKFontForDefaultDesign(v6, *MEMORY[0x1E69DDCF8], 32770, 0, *v9);
    [(UILabel *)v14 setFont:v15];

    v16 = self->_logoLabel;
    v17 = [v5 foregroundColor];
    [(UILabel *)v16 setTextColor:v17];

    [(UILabel *)self->_logoLabel setText:v7];
    [(PKPassFrontFaceView *)self insertContentView:self->_logoLabel ofType:0];
  }

  v34 = [(PKPassFaceView *)self buckets];
  v18 = [v34 firstObject];
  v19 = [v18 firstObject];

  if (v19)
  {
    v20 = [v19 label];
    v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    flightCodeLabel = self->_flightCodeLabel;
    self->_flightCodeLabel = v21;

    [(UILabel *)self->_flightCodeLabel setNumberOfLines:1];
    [(UILabel *)self->_flightCodeLabel setLineBreakMode:4];
    [(UILabel *)self->_flightCodeLabel setTextAlignment:2];
    v23 = self->_flightCodeLabel;
    v24 = PKFontForDefaultDesign(v6, *MEMORY[0x1E69DDD80], 32770, 0, *v9);
    [(UILabel *)v23 setFont:v24];

    v25 = self->_flightCodeLabel;
    v26 = [v5 foregroundColor];
    [(UILabel *)v25 setTextColor:v26];

    [(UILabel *)self->_flightCodeLabel setText:v20];
    [(PKPassFrontFaceView *)self insertContentView:self->_flightCodeLabel ofType:0];
    v27 = [v19 value];
    v28 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    dateLabel = self->_dateLabel;
    self->_dateLabel = v28;

    [(UILabel *)self->_dateLabel setNumberOfLines:1];
    [(UILabel *)self->_dateLabel setLineBreakMode:4];
    [(UILabel *)self->_dateLabel setTextAlignment:2];
    v30 = self->_dateLabel;
    v31 = _PKFontForDesign(v6, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD28], 0x8000, 0, 0);
    [(UILabel *)v30 setFont:v31];

    v32 = self->_dateLabel;
    v33 = [v5 labelColor];
    [(UILabel *)v32 setTextColor:v33];

    [(UILabel *)self->_dateLabel setText:v27];
    [(PKPassFrontFaceView *)self insertContentView:self->_dateLabel ofType:0];
  }

  else
  {
    __break(1u);
  }
}

- (void)createBodyContentViews
{
  v99.receiver = self;
  v99.super_class = PKPassSemanticBoardingPassFaceView;
  [(PKPassFrontFaceView *)&v99 createBodyContentViews];
  v96 = [(PKPassFaceView *)self pass];
  v3 = [v96 style];
  v4 = [(PKPassFaceView *)self colorProfile];
  v98 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
  v5 = [(PKPassFaceView *)self buckets];
  if ([v5 count] != 4)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = [v5 objectAtIndexedSubscript:1];
  v93 = [v5 objectAtIndexedSubscript:2];
  v95 = [v5 objectAtIndexedSubscript:3];
  if ([v6 count] <= 3)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v85 = *MEMORY[0x1E69DB8C8];
  v7 = _PKFontForDesign(v98, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDD28], 0x8000, 0, 0);
  v97 = v7;
  v80 = v3;
  PKPassFrontFaceContentSize();
  if (v8 >= 343.0)
  {
    v9 = 44.0;
  }

  else
  {
    v9 = 42.0;
  }

  v10 = PKFontForDefaultDesign(v98, *MEMORY[0x1E69DDD18], *MEMORY[0x1E69DB960]);
  v94 = [v10 fontWithSize:v9];

  v11 = [v6 objectAtIndexedSubscript:0];
  v12 = [v11 label];
  v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  departureCityLabel = self->_departureCityLabel;
  self->_departureCityLabel = v13;

  [(UILabel *)self->_departureCityLabel setNumberOfLines:1];
  [(UILabel *)self->_departureCityLabel setLineBreakMode:4];
  [(UILabel *)self->_departureCityLabel setTextAlignment:0];
  [(UILabel *)self->_departureCityLabel setFont:v7];
  v15 = self->_departureCityLabel;
  v16 = [v4 labelColor];
  [(UILabel *)v15 setTextColor:v16];

  v90 = v12;
  [(UILabel *)self->_departureCityLabel setText:v12];
  [(PKPassFrontFaceView *)self insertContentView:self->_departureCityLabel ofType:2];
  v91 = v11;
  v17 = [v11 value];
  v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  departureAirportLabel = self->_departureAirportLabel;
  self->_departureAirportLabel = v18;

  [(UILabel *)self->_departureAirportLabel setNumberOfLines:1];
  [(UILabel *)self->_departureAirportLabel setLineBreakMode:4];
  [(UILabel *)self->_departureAirportLabel setTextAlignment:0];
  [(UILabel *)self->_departureAirportLabel setFont:v94];
  v20 = self->_departureAirportLabel;
  v21 = [v4 foregroundColor];
  [(UILabel *)v20 setTextColor:v21];

  v89 = v17;
  [(UILabel *)self->_departureAirportLabel setText:v17];
  [(PKPassFrontFaceView *)self insertContentView:self->_departureAirportLabel ofType:2];
  v88 = [v6 objectAtIndexedSubscript:1];
  v22 = [v88 value];
  v23 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  departureDateLabel = self->_departureDateLabel;
  self->_departureDateLabel = v23;

  [(UILabel *)self->_departureDateLabel setNumberOfLines:1];
  [(UILabel *)self->_departureDateLabel setLineBreakMode:4];
  [(UILabel *)self->_departureDateLabel setTextAlignment:0];
  [(UILabel *)self->_departureDateLabel setFont:v97];
  v25 = self->_departureDateLabel;
  v26 = [v4 labelColor];
  [(UILabel *)v25 setTextColor:v26];

  v87 = v22;
  [(UILabel *)self->_departureDateLabel setText:v22];
  [(PKPassFrontFaceView *)self insertContentView:self->_departureDateLabel ofType:2];
  v27 = [v6 objectAtIndexedSubscript:2];
  v28 = [v27 label];
  v29 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  destinationCityLabel = self->_destinationCityLabel;
  self->_destinationCityLabel = v29;

  [(UILabel *)self->_destinationCityLabel setNumberOfLines:1];
  [(UILabel *)self->_destinationCityLabel setLineBreakMode:4];
  [(UILabel *)self->_destinationCityLabel setTextAlignment:2];
  [(UILabel *)self->_destinationCityLabel setFont:v97];
  v31 = self->_destinationCityLabel;
  v32 = [v4 labelColor];
  [(UILabel *)v31 setTextColor:v32];

  v84 = v28;
  [(UILabel *)self->_destinationCityLabel setText:v28];
  [(PKPassFrontFaceView *)self insertContentView:self->_destinationCityLabel ofType:2];
  v86 = v27;
  v33 = [v27 value];
  v34 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  destinationAirportLabel = self->_destinationAirportLabel;
  self->_destinationAirportLabel = v34;

  [(UILabel *)self->_destinationAirportLabel setNumberOfLines:1];
  [(UILabel *)self->_destinationAirportLabel setLineBreakMode:4];
  [(UILabel *)self->_destinationAirportLabel setTextAlignment:2];
  [(UILabel *)self->_destinationAirportLabel setFont:v94];
  v36 = self->_destinationAirportLabel;
  v37 = [v4 foregroundColor];
  [(UILabel *)v36 setTextColor:v37];

  [(UILabel *)self->_destinationAirportLabel setText:v33];
  [(PKPassFrontFaceView *)self insertContentView:self->_destinationAirportLabel ofType:2];
  v92 = v6;
  v83 = [v6 objectAtIndexedSubscript:3];
  v38 = [v83 value];
  v39 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  arrivalDateLabel = self->_arrivalDateLabel;
  self->_arrivalDateLabel = v39;

  [(UILabel *)self->_arrivalDateLabel setNumberOfLines:1];
  [(UILabel *)self->_arrivalDateLabel setLineBreakMode:4];
  [(UILabel *)self->_arrivalDateLabel setTextAlignment:2];
  [(UILabel *)self->_arrivalDateLabel setFont:v97];
  v41 = self->_arrivalDateLabel;
  v42 = [v4 labelColor];
  [(UILabel *)v41 setTextColor:v42];

  [(UILabel *)self->_arrivalDateLabel setText:v38];
  [(PKPassFrontFaceView *)self insertContentView:self->_arrivalDateLabel ofType:2];
  v43 = PKFontForDefaultDesign(v98, *MEMORY[0x1E69DDD80], *MEMORY[0x1E69DB958]);
  v44 = [v93 firstObject];
  v45 = [v44 value];

  v46 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  passengerNameLabel = self->_passengerNameLabel;
  self->_passengerNameLabel = v46;

  [(UILabel *)self->_passengerNameLabel setNumberOfLines:1];
  [(UILabel *)self->_passengerNameLabel setLineBreakMode:4];
  [(UILabel *)self->_passengerNameLabel setTextAlignment:0];
  v82 = v43;
  [(UILabel *)self->_passengerNameLabel setFont:v43];
  v48 = self->_passengerNameLabel;
  v49 = [v4 foregroundColor];
  [(UILabel *)v48 setTextColor:v49];

  v81 = v45;
  [(UILabel *)self->_passengerNameLabel setText:v45];
  [(UILabel *)self->_passengerNameLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_passengerNameLabel setMinimumScaleFactor:0.8];
  [(PKPassFrontFaceView *)self insertContentView:self->_passengerNameLabel ofType:2];
  v50 = objc_alloc_init(PKPassFaceBadgesCollectionView);
  badgesCollectionView = self->_badgesCollectionView;
  self->_badgesCollectionView = v50;

  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setLayoutDirection:0];
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setContentInsets:3.0, 3.0, 3.0, 3.0];
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setNumberOfLines:2];
  if ([v93 count] < 2)
  {
    v52 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v52 = [v93 subarrayWithRange:{1, objc_msgSend(v93, "count") - 1}];
  }

  v53 = self->_badgesCollectionView;
  v54 = [v4 foregroundColor];
  [(PKPassFaceBadgesCollectionView *)v53 setBadgesBackgroundColor:v54];

  v55 = self->_badgesCollectionView;
  v56 = [v4 backgroundColor];
  [(PKPassFaceBadgesCollectionView *)v55 setBadgesTextColor:v56];

  v57 = self->_badgesCollectionView;
  v58 = PKFontForDefaultDesign(v98, *MEMORY[0x1E69DDD10], *MEMORY[0x1E69DB980]);
  [(PKPassFaceBadgesCollectionView *)v57 setBadgesFont:v58];

  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setBadgesTextPadding:5.0, 6.0, 5.0, 6.0];
  v59 = v52;
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setFields:v52];
  [(PKPassFrontFaceView *)self insertContentView:self->_badgesCollectionView ofType:2];
  v60 = [[PKDynamicPassBucketView alloc] initWithBucket:v95];
  auxiliaryBucketView = self->_auxiliaryBucketView;
  self->_auxiliaryBucketView = v60;

  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setLayoutDirection:0];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setDistribution:1];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setSizingRule:0];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setSpacing:10.0];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setVerticalPadding:0.0];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setMinResizeScale:0.6];
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setLabelFont:v97];
  v62 = self->_auxiliaryBucketView;
  v63 = [v4 labelColor];
  [(PKDynamicPassBucketView *)v62 setLabelTextColor:v63];

  v64 = self->_auxiliaryBucketView;
  v65 = _PKFontForDesign(v98, v85, *MEMORY[0x1E69DDD40], 0, 0, 0);
  [(PKDynamicPassBucketView *)v64 setValueFont:v65];

  v66 = self->_auxiliaryBucketView;
  v67 = [v4 foregroundColor];
  [(PKDynamicPassBucketView *)v66 setValueTextColor:v67];

  [(PKPassFrontFaceView *)self insertContentView:self->_auxiliaryBucketView ofType:2];
  v68 = [(PKPassFaceView *)self pass];
  v69 = -[PKPassSemanticBoardingPassFaceView _transitGlyphForTransitType:](self, "_transitGlyphForTransitType:", [v68 transitType]);

  v70 = [(PKPassFaceView *)self colorProfile];
  v71 = [v70 labelImageForGlyph:v69];

  v72 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v71];
  transitImageView = self->_transitImageView;
  self->_transitImageView = v72;

  [(PKPassFrontFaceView *)self insertContentView:self->_transitImageView ofType:2];
  v74 = [v96 barcode];
  if (v74)
  {
    v75 = [[PKBarcodeStickerView alloc] initWithBarcode:v74 validityState:[PKBarcodeStickerView passStyle:"validityStateForPass:" validityStateForPass:v96], v80];
    customBarcodeView = self->_customBarcodeView;
    self->_customBarcodeView = v75;

    [(PKBarcodeStickerView *)self->_customBarcodeView sizeToFit];
    [(PKBarcodeStickerView *)self->_customBarcodeView setAlpha:1.0];
    [(PKBarcodeStickerView *)self->_customBarcodeView setMatteCornerRadius:12.0];
    [(PKBarcodeStickerView *)self->_customBarcodeView layoutIfNeeded];
    if ([(PKPassFrontFaceView *)self showsBarcodeView])
    {
      [(PKPassFrontFaceView *)self insertContentView:self->_customBarcodeView ofType:2];
    }
  }

  v77 = [(PKPassSemanticBoardingPassFaceView *)self _footerImageGlyphIfExists];
  if (v77)
  {
    v78 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v77];
    footerImageView = self->_footerImageView;
    self->_footerImageView = v78;

    if ([(PKPassFrontFaceView *)self showsBarcodeView])
    {
      [(PKPassFrontFaceView *)self insertContentView:self->_footerImageView ofType:2];
    }
  }
}

- (void)layoutSubviews
{
  v165.receiver = self;
  v165.super_class = PKPassSemanticBoardingPassFaceView;
  [(PKPassFrontFaceView *)&v165 layoutSubviews];
  v3 = [(PKPassFaceView *)self style];
  PKPassFrontFaceContentSize();
  v5 = v4;
  PKPassFaceLogoRect();
  x = v166.origin.x;
  y = v166.origin.y;
  width = v166.size.width;
  height = v166.size.height;
  MinX = CGRectGetMinX(v166);
  v155 = v5 + MinX * -2.0;
  PKFloatRoundToPixel();
  v11 = v10;
  v164 = v5;
  if (self->_logoLabel)
  {
    v167.origin.x = x;
    v167.origin.y = y;
    v167.size.width = width;
    v167.size.height = height;
    if (!CGRectIsNull(v167))
    {
      v12 = x;
      v160 = height;
      v13 = [(PKPassFaceView *)self pass];
      [v13 logoRect];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      v168.origin.x = v15;
      v168.origin.y = v17;
      v168.size.width = v19;
      v168.size.height = v21;
      if (CGRectIsNull(v168))
      {
        v22 = v12;
        v169.origin.x = v12;
        v169.origin.y = y;
        v169.size.width = width;
        v23 = v160;
        v169.size.height = v160;
        v24 = CGRectGetMinX(v169);
      }

      else
      {
        v170.origin.x = v15;
        v170.origin.y = v17;
        v170.size.width = v19;
        v170.size.height = v21;
        v24 = CGRectGetMaxX(v170) + 8.0;
        v23 = v160;
        v22 = v12;
      }

      v171.origin.x = v22;
      v171.origin.y = y;
      v171.size.width = v11;
      v171.size.height = v23;
      [(UILabel *)self->_logoLabel sizeThatFits:CGRectGetMaxX(v171) - v24, 1.79769313e308];
      logoLabel = self->_logoLabel;
      UIRectCenteredYInRect();
      [(UILabel *)logoLabel setFrame:?];
    }
  }

  v153 = v11;
  [(UILabel *)self->_flightCodeLabel sizeThatFits:v11, 1.79769313e308];
  v27 = v26;
  v29 = v28;
  [(UILabel *)self->_dateLabel sizeThatFits:v11, 1.79769313e308];
  v158 = v30;
  v161 = v31;
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  MinY = CGRectGetMinY(v172);
  [(UILabel *)self->_flightCodeLabel setFrame:v164 - MinX - v27, MinY, v27, v29];
  v173.origin.x = v164 - MinX - v27;
  v173.origin.y = MinY;
  v173.size.width = v27;
  v173.size.height = v29;
  [(UILabel *)self->_dateLabel setFrame:v164 - MinX - v158, CGRectGetMaxY(v173) + -2.0, v158, v161];
  [(UIImageView *)self->_transitImageView frame];
  v33 = *MEMORY[0x1E695EFF8];
  v34 = *(MEMORY[0x1E695EFF8] + 8);
  v35 = 28.0;
  if (v164 < 343.0)
  {
    v35 = 8.0;
  }

  v151 = v35;
  v36 = 9.0;
  if (v164 < 343.0)
  {
    v36 = 5.0;
  }

  v152 = v36;
  v159 = *(MEMORY[0x1E695EFF8] + 8);
  v162 = *MEMORY[0x1E695EFF8];
  UIRectCenteredXInRect();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  [(UIImageView *)self->_transitImageView setFrame:?];
  v145 = v153 + -20.0;
  [(UILabel *)self->_departureCityLabel textRectForBounds:1 limitedToNumberOfLines:v33, v34];
  v46.n128_u64[0] = v45.n128_u64[0];
  v48.n128_u64[0] = v47;
  PKSizeCeilToPixel(v46, v48, v45);
  v50 = v49;
  v52 = v51;
  v154 = v51;
  [(UILabel *)self->_departureAirportLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  PKSizeCeilToPixel(v53, v54, v55);
  v57 = v56;
  [(UILabel *)self->_departureDateLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  PKSizeCeilToPixel(v58, v59, v60);
  v146 = v61;
  v62 = v52 + v57 + v61 + -6.0;
  v174.origin.x = v38;
  v174.origin.y = v40;
  v174.size.width = v42;
  v174.size.height = v44;
  v63 = CGRectGetMinY(v174);
  v175.origin.x = v38;
  v175.origin.y = v40;
  v175.size.width = v42;
  v175.size.height = v44;
  v64 = CGRectGetHeight(v175);
  v65.n128_u64[0] = 0.5;
  v66.n128_f64[0] = v63 + (v64 - v62) * 0.5;
  PKFloatCeilToPixel(v66, v65);
  [(UILabel *)self->_departureCityLabel setFrame:MinX, v67, v50, v154];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)self->_departureAirportLabel setFrame:v69, v57 + -2.0 + v68];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v149 = v71;
  v150 = v70;
  v147 = v146 + -4.0 + v72;
  v148 = v73;
  [(UILabel *)self->_departureDateLabel setFrame:?];
  [(UILabel *)self->_destinationCityLabel textRectForBounds:1 limitedToNumberOfLines:v162, v159, v145, 1.79769313e308];
  v75.n128_u64[0] = v74.n128_u64[0];
  v77.n128_u64[0] = v76;
  PKSizeCeilToPixel(v75, v77, v74);
  v79 = v78;
  [(UILabel *)self->_destinationAirportLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  PKSizeCeilToPixel(v80, v81, v82);
  v84 = v83;
  [(UILabel *)self->_arrivalDateLabel sizeThatFits:1.79769313e308, 1.79769313e308];
  PKSizeCeilToPixel(v85, v86, v87);
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  v88.n128_f64[0] = v164 - MinX - v79;
  PKFloatFloorToPixel(v88, v89);
  [(UILabel *)self->_destinationCityLabel setFrame:?];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)self->_destinationAirportLabel setFrame:v91, v84 + -2.0 + v90];
  PKContentAlignmentMake();
  PKSizeAlignedInRect();
  [(UILabel *)self->_arrivalDateLabel setFrame:?];
  [(UILabel *)self->_passengerNameLabel textRectForBounds:1 limitedToNumberOfLines:v162, v159];
  v93.n128_u64[0] = v92.n128_u64[0];
  v95.n128_u64[0] = v94;
  PKSizeCeilToPixel(v93, v95, v92);
  v97 = v96;
  v99 = v98;
  v176.size.width = v149;
  v176.origin.x = v150;
  v176.origin.y = v147;
  v176.size.height = v148;
  v100 = v151 + CGRectGetMaxY(v176);
  [(UILabel *)self->_passengerNameLabel setFrame:MinX, v100, v97, v99];
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView sizeForBoundingSize:2 limitedToNumberOfLines:v155 + 6.0, 1.79769313e308];
  v102 = v101;
  v104 = v103;
  v177.origin.x = MinX;
  v177.origin.y = v100;
  v177.size.width = v97;
  v177.size.height = v99;
  v105 = CGRectGetMinX(v177) + -3.0;
  v178.origin.x = MinX;
  v178.origin.y = v100;
  v178.size.width = v97;
  v178.size.height = v99;
  v106 = v152 + CGRectGetMaxY(v178);
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView setFrame:v105, v106, v102, v104];
  [(PKPassFaceBadgesCollectionView *)self->_badgesCollectionView sizeForBoundingSize:1 limitedToNumberOfLines:v155 + 6.0, 1.79769313e308];
  if (v164 >= 343.0 && v104 <= v107)
  {
    v109 = 15.0;
  }

  else
  {
    v109 = 5.0;
  }

  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView fittedSizeFor:v155, 1.79769313e308, v164];
  v111 = v110;
  v113 = v112;
  v179.origin.x = v105;
  v179.origin.y = v106;
  v179.size.width = v102;
  v179.size.height = v104;
  [(PKDynamicPassBucketView *)self->_auxiliaryBucketView setFrame:MinX, CGRectGetMaxY(v179) + v109, v111, v113];
  customBarcodeView = self->_customBarcodeView;
  if (customBarcodeView)
  {
    v115 = [(PKBarcodeStickerView *)customBarcodeView barcode];
    [v115 sizeForPassStyle:v3];
    [(PKBarcodeStickerView *)self->_customBarcodeView sizeThatFits:?];
    PKContentAlignmentMake();
    PKSizeAlignedInRect();
    v119 = v118;
    v120 = v117;
    v122 = v121;
    v123 = 24.0;
    if (v164 < 343.0)
    {
      v123 = 8.0;
    }

    v124 = v116 - v123;
    [(PKBarcodeStickerView *)self->_customBarcodeView setFrame:v119, v116 - v123, v117];
  }

  else
  {
    v119 = *MEMORY[0x1E695F050];
    v124 = *(MEMORY[0x1E695F050] + 8);
    v120 = *(MEMORY[0x1E695F050] + 16);
    v122 = *(MEMORY[0x1E695F050] + 24);
  }

  footerImageView = self->_footerImageView;
  if (footerImageView)
  {
    [(UIImageView *)footerImageView bounds];
    v126 = v124;
    v127 = v122;
    v128 = v120;
    v129 = v119;
    v131 = v130;
    PKContentAlignmentMake();
    v157 = v131;
    v132 = v129;
    v133 = v128;
    v134 = v127;
    v135 = v126;
    PKSizeAlignedInRect();
    v137 = v136;
    v139 = v138;
    v163 = v140;
    v142 = v141;
    v180.origin.x = v132;
    v180.origin.y = v135;
    v180.size.width = v133;
    v180.size.height = v134;
    if (CGRectIsNull(v180))
    {
      v143 = 24.0;
      if (v164 < 343.0)
      {
        v143 = 8.0;
      }

      v144 = v139 - v143;
    }

    else
    {
      v181.origin.x = v132;
      v181.origin.y = v135;
      v181.size.width = v133;
      v181.size.height = v134;
      v144 = CGRectGetMinY(v181) + -6.0 - v157;
    }

    [(UIImageView *)self->_footerImageView setFrame:v137, v144, v163, v142];
  }
}

- (id)_transitGlyphForTransitType:(int64_t)a3
{
  if (a3 > 4)
  {
    v5 = 0;
  }

  else
  {
    v3 = off_1E8019108[a3];
    v4 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8] scale:1];
    v5 = [MEMORY[0x1E69DCAB8] systemImageNamed:v3 withConfiguration:v4];
  }

  return v5;
}

- (id)_footerImageGlyphIfExists
{
  v3 = [(PKPassFaceView *)self pass];
  v4 = [v3 stringsForSemanticKey:*MEMORY[0x1E69BBF48]];
  if ([v4 count])
  {
    v5 = [v3 stringsForSemanticKey:*MEMORY[0x1E69BBF28]];
    v6 = PKTransitSecurityProgramsFromStrings();
    v7 = PKTransitSecurityProgramsFromStrings();
    if ((v7 & v6 & 2) != 0)
    {
      v8 = @"TSAPreCheckTouchless";
    }

    else if (v7 & v6)
    {
      v10 = [(PKPassFaceView *)self colorProfile];
      v11 = [v10 backgroundColor];
      [v11 CGColor];
      PKColorGetLightness();
      v13 = v12;

      if (v13 < 0.85)
      {
        v14 = @"_Light";
      }

      else
      {
        v14 = @"_Dark";
      }

      v8 = [@"TSAPreCheck" stringByAppendingString:v14];
    }

    else
    {
      v8 = 0;
    }

    v9 = PKUIImageNamed(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setShowsBarcodeView:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v7 = [(PKPassFrontFaceView *)self showsBarcodeView];
  v13.receiver = self;
  v13.super_class = PKPassSemanticBoardingPassFaceView;
  [(PKPassFrontFaceView *)&v13 setShowsBarcodeView:v5 animated:v4];
  if (v7 != v5 && self->_customBarcodeView)
  {
    if (v5)
    {
      [PKPassFrontFaceView insertContentView:"insertContentView:ofType:" ofType:?];
      [(PKPassFrontFaceView *)self insertContentView:self->_footerImageView ofType:2];
    }

    v8 = 0.2;
    if (!v4)
    {
      v8 = 0.0;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__PKPassSemanticBoardingPassFaceView_setShowsBarcodeView_animated___block_invoke;
    v11[3] = &unk_1E8013F80;
    v11[4] = self;
    v12 = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__PKPassSemanticBoardingPassFaceView_setShowsBarcodeView_animated___block_invoke_2;
    v9[3] = &unk_1E8013E98;
    v10 = v5;
    v9[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:v11 animations:v9 completion:v8];
  }
}

uint64_t __67__PKPassSemanticBoardingPassFaceView_setShowsBarcodeView_animated___block_invoke(uint64_t a1)
{
  v1 = 0.0;
  if (*(a1 + 40))
  {
    v1 = 1.0;
  }

  return [*(*(a1 + 32) + 1056) setAlpha:v1];
}

uint64_t __67__PKPassSemanticBoardingPassFaceView_setShowsBarcodeView_animated___block_invoke_2(uint64_t result)
{
  if ((*(result + 40) & 1) == 0)
  {
    v2 = result;
    [*(result + 32) removeContentView:*(*(result + 32) + 1056) ofType:2];
    v3 = *(v2 + 32);
    v4 = v3[133];

    return [v3 removeContentView:v4 ofType:2];
  }

  return result;
}

@end
@interface PKTransactionMapView
- ($0EA7EFFD5C9A8626BF46133D7244B340)_mapRectForTransaction:(id)transaction;
- (PKTransactionMapView)initWithFrame:(CGRect)frame;
- (id)_annotationsForTransaction:(id)transaction;
- (id)_locationShifter;
- (id)mapView:(id)view viewForAnnotation:(id)annotation;
- (void)_centerMapAnimated:(BOOL)animated;
- (void)_createAnnotationsForTransaction:(id)transaction;
- (void)_shiftLocationIfNeeded:(id)needed completion:(id)completion;
- (void)_updateLocations;
- (void)layoutSubviews;
- (void)setMerchant:(id)merchant;
- (void)setTransaction:(id)transaction;
- (void)setUsesDarkAppearance:(BOOL)appearance;
@end

@implementation PKTransactionMapView

- (PKTransactionMapView)initWithFrame:(CGRect)frame
{
  v10.receiver = self;
  v10.super_class = PKTransactionMapView;
  v3 = [(PKTransactionMapView *)&v10 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x1E696F2C0]);
    [(PKTransactionMapView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    internalMapView = v3->_internalMapView;
    v3->_internalMapView = v5;

    [(MKMapView *)v3->_internalMapView setMapType:0];
    [(MKMapView *)v3->_internalMapView setShowsBuildings:1];
    v7 = v3->_internalMapView;
    filterIncludingAllCategories = [MEMORY[0x1E696F350] filterIncludingAllCategories];
    [(MKMapView *)v7 setPointOfInterestFilter:filterIncludingAllCategories];

    [(MKMapView *)v3->_internalMapView setDelegate:v3];
    [(MKMapView *)v3->_internalMapView setShowsAttribution:0];
    [(MKMapView *)v3->_internalMapView setUserInteractionEnabled:0];
    [(PKTransactionMapView *)v3 addSubview:v3->_internalMapView];
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PKTransactionMapView;
  [(PKTransactionMapView *)&v11 layoutSubviews];
  [(PKTransactionMapView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MKMapView *)self->_internalMapView setFrame:?];
  v12.origin.x = v4;
  v12.origin.y = v6;
  v12.size.width = v8;
  v12.size.height = v10;
  if (!CGRectEqualToRect(v12, self->_lastLaidBounds))
  {
    [(PKTransactionMapView *)self _centerMapAnimated:1];
  }
}

- (void)setTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (self->_transaction != transactionCopy)
  {
    v7 = transactionCopy;
    objc_storeStrong(&self->_transaction, transaction);
    annotations = [(MKMapView *)self->_internalMapView annotations];
    if ([annotations count])
    {
      [(MKMapView *)self->_internalMapView removeAnnotations:annotations];
    }

    [(PKTransactionMapView *)self _updateLocations];

    transactionCopy = v7;
  }
}

- (void)setMerchant:(id)merchant
{
  merchantCopy = merchant;
  if (self->_merchant != merchantCopy)
  {
    v7 = merchantCopy;
    objc_storeStrong(&self->_merchant, merchant);
    annotations = [(MKMapView *)self->_internalMapView annotations];
    if ([annotations count])
    {
      [(MKMapView *)self->_internalMapView removeAnnotations:annotations];
    }

    [(PKTransactionMapView *)self _updateLocations];

    merchantCopy = v7;
  }
}

- (void)setUsesDarkAppearance:(BOOL)appearance
{
  if (self->_usesDarkAppearance == !appearance)
  {
    self->_usesDarkAppearance = appearance;
    [(MKMapView *)self->_internalMapView _setShowsNightMode:?];
  }
}

- (void)_createAnnotationsForTransaction:(id)transaction
{
  v4 = [(PKTransactionMapView *)self _annotationsForTransaction:transaction];
  if ([v4 count])
  {
    [(MKMapView *)self->_internalMapView addAnnotations:v4];
  }

  [(PKTransactionMapView *)self _centerMapAnimated:1];
}

- (void)_centerMapAnimated:(BOOL)animated
{
  animatedCopy = animated;
  p_lastLaidBounds = &self->_lastLaidBounds;
  [(PKTransactionMapView *)self bounds];
  p_lastLaidBounds->origin.x = v6;
  p_lastLaidBounds->origin.y = v7;
  p_lastLaidBounds->size.width = v8;
  p_lastLaidBounds->size.height = v9;
  [(PKTransactionMapView *)self _mapRectForTransaction:self->_transaction];
  internalMapView = self->_internalMapView;

  [(MKMapView *)internalMapView setVisibleMapRect:animatedCopy animated:?];
}

- (id)_annotationsForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = transactionCopy;
  if (!transactionCopy)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    goto LABEL_7;
  }

  transactionType = [transactionCopy transactionType];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (transactionType != 2)
  {
LABEL_7:
    if (!self->_preferredLocation)
    {
      goto LABEL_20;
    }

    v9 = objc_alloc_init(MEMORY[0x1E696F348]);
    [(CLLocation *)self->_preferredLocation coordinate];
    [v9 setCoordinate:?];
    if (self->_showsMerchantName)
    {
      merchant = [v5 merchant];
      merchant = merchant;
      if (!merchant)
      {
        merchant = self->_merchant;
      }

      v12 = merchant;

      displayName = [(PKMerchant *)v12 displayName];
      if (([(PKMerchant *)v12 shouldIgnoreMapsMatches]& 1) == 0)
      {
        mapsMerchant = [(PKMerchant *)v12 mapsMerchant];
        name = [mapsMerchant name];
        v16 = name;
        if (name)
        {
          v17 = name;
        }

        else
        {
          v17 = displayName;
        }

        v18 = v17;

        displayName = v18;
      }

      [v9 setTitle:displayName];
    }

    goto LABEL_19;
  }

  if (!self->_startStationLocation)
  {
    if (self->_endStationLocation)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  v8 = objc_alloc_init(MEMORY[0x1E696F348]);
  [(CLLocation *)self->_startStationLocation coordinate];
  [v8 setCoordinate:?];
  [v7 addObject:v8];

  if (self->_endStationLocation)
  {
LABEL_18:
    v9 = objc_alloc_init(MEMORY[0x1E696F348]);
    [(CLLocation *)self->_endStationLocation coordinate];
    [v9 setCoordinate:?];
LABEL_19:
    [v7 addObject:v9];
  }

LABEL_20:
  v19 = [v7 copy];

  return v19;
}

- ($0EA7EFFD5C9A8626BF46133D7244B340)_mapRectForTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = transactionCopy;
  if (!transactionCopy || [transactionCopy transactionType] != 2)
  {
    goto LABEL_7;
  }

  startStationLocation = self->_startStationLocation;
  endStationLocation = self->_endStationLocation;
  if (!startStationLocation)
  {
    if (endStationLocation)
    {
LABEL_10:
      v22 = endStationLocation;
      goto LABEL_11;
    }

LABEL_7:
    v22 = self->_preferredLocation;
    if (!v22)
    {
      v15 = *MEMORY[0x1E696F0D0];
      v17 = *(MEMORY[0x1E696F0D0] + 8);
      v19 = *(MEMORY[0x1E696F0D0] + 16);
      v21 = *(MEMORY[0x1E696F0D0] + 24);
      goto LABEL_12;
    }

LABEL_11:
    coordinate = [(CLLocation *)v22 coordinate];
    v25 = v24;
    v27 = v26;
    v28 = MEMORY[0x1BFB41750](coordinate) * 300.0;
    v36.latitude = v25;
    v36.longitude = v27;
    v29 = MKMapPointForCoordinate(v36);
    v15 = v29.x - v28;
    v17 = v29.y - v28;
    v21 = v28 + v28;

    v19 = v21;
    goto LABEL_12;
  }

  if (!endStationLocation)
  {
    endStationLocation = self->_startStationLocation;
    goto LABEL_10;
  }

  [(CLLocation *)startStationLocation coordinate];
  y = MKMapPointForCoordinate(v34).y;
  [(CLLocation *)self->_endStationLocation coordinate];
  v9 = MKMapPointForCoordinate(v35);
  [(CLLocation *)self->_startStationLocation coordinate];
  v11 = v10;
  coordinate2 = [(CLLocation *)self->_endStationLocation coordinate];
  [(PKTransactionMapView *)self bounds:fmin(y];
  _MKMapRectThatFits();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
LABEL_12:

  v30 = v15;
  v31 = v17;
  v32 = v19;
  v33 = v21;
  result.var1.var1 = v33;
  result.var1.var0 = v32;
  result.var0.var1 = v31;
  result.var0.var0 = v30;
  return result;
}

- (void)_updateLocations
{
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__7;
  v37[4] = __Block_byref_object_dispose__7;
  preferredLocation = [(PKPaymentTransaction *)self->_transaction preferredLocation];
  v4 = preferredLocation;
  if (preferredLocation)
  {
    location = preferredLocation;
  }

  else
  {
    mapsMerchant = [(PKMerchant *)self->_merchant mapsMerchant];
    location = [mapsMerchant location];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__7;
  v35 = __Block_byref_object_dispose__7;
  startStationLocation = [(PKPaymentTransaction *)self->_transaction startStationLocation];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  endStationLocation = [(PKPaymentTransaction *)self->_transaction endStationLocation];
  transactionType = [(PKPaymentTransaction *)self->_transaction transactionType];
  v7 = objc_alloc_init(MEMORY[0x1E69B8658]);
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__PKTransactionMapView__updateLocations__block_invoke;
  aBlock[3] = &unk_1E8014FE0;
  v8 = v7;
  v22 = v8;
  objc_copyWeak(&v23, &location);
  v9 = _Block_copy(aBlock);
  if (transactionType == 2)
  {
    startStationLocation2 = [(PKPaymentTransaction *)self->_transaction startStationLocation];
    if (startStationLocation2)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __40__PKTransactionMapView__updateLocations__block_invoke_4;
      v20[3] = &unk_1E8015008;
      v20[4] = &v31;
      v9[2](v9, startStationLocation2, v20);
    }

    endStationLocation2 = [(PKPaymentTransaction *)self->_transaction endStationLocation];

    if (endStationLocation2)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __40__PKTransactionMapView__updateLocations__block_invoke_5;
      v19[3] = &unk_1E8015008;
      v19[4] = &v25;
      v9[2](v9, endStationLocation2, v19);
    }
  }

  else
  {
    endStationLocation2 = 0;
  }

  if (!v32[5] && !v26[5])
  {
    preferredLocation2 = [(PKPaymentTransaction *)self->_transaction preferredLocation];

    endStationLocation2 = preferredLocation2;
    if (preferredLocation2 || (-[PKMerchant mapsMerchant](self->_merchant, "mapsMerchant"), v13 = objc_claimAutoreleasedReturnValue(), [v13 location], endStationLocation2 = objc_claimAutoreleasedReturnValue(), v13, endStationLocation2))
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __40__PKTransactionMapView__updateLocations__block_invoke_6;
      v18[3] = &unk_1E8015008;
      v18[4] = v37;
      v9[2](v9, endStationLocation2, v18);
    }
  }

  null = [MEMORY[0x1E695DFB0] null];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__PKTransactionMapView__updateLocations__block_invoke_7;
  v16[3] = &unk_1E8015058;
  objc_copyWeak(&v17, &location);
  v16[4] = v37;
  v16[5] = &v31;
  v16[6] = &v25;
  v15 = [v8 evaluateWithInput:null completion:v16];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v23);

  objc_destroyWeak(&location);
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(v37, 8);
}

void __40__PKTransactionMapView__updateLocations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __40__PKTransactionMapView__updateLocations__block_invoke_2;
    v8[3] = &unk_1E8014FB8;
    objc_copyWeak(&v11, (a1 + 40));
    v9 = v5;
    v10 = v6;
    [v7 addOperation:v8];

    objc_destroyWeak(&v11);
  }
}

void __40__PKTransactionMapView__updateLocations__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __40__PKTransactionMapView__updateLocations__block_invoke_3;
    v10[3] = &unk_1E8014F90;
    v9 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = v7;
    v11 = v6;
    [WeakRetained _shiftLocationIfNeeded:v9 completion:v10];
  }

  else
  {
    (*(v7 + 2))(v7, v6, 1);
  }
}

uint64_t __40__PKTransactionMapView__updateLocations__block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __40__PKTransactionMapView__updateLocations__block_invoke_7(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40__PKTransactionMapView__updateLocations__block_invoke_8;
    aBlock[3] = &unk_1E8015030;
    aBlock[4] = WeakRetained;
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v6 = _Block_copy(aBlock);
    v7 = v6;
    if (a2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__PKTransactionMapView__updateLocations__block_invoke_9;
      block[3] = &unk_1E8010B50;
      v9 = v6;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }

    else
    {
      v6[2](v6);
    }
  }
}

uint64_t __40__PKTransactionMapView__updateLocations__block_invoke_8(void *a1)
{
  objc_storeStrong((a1[4] + 456), *(*(a1[5] + 8) + 40));
  objc_storeStrong((a1[4] + 464), *(*(a1[6] + 8) + 40));
  objc_storeStrong((a1[4] + 472), *(*(a1[7] + 8) + 40));
  v2 = a1[4];
  v3 = v2[61];

  return [v2 _createAnnotationsForTransaction:v3];
}

- (void)_shiftLocationIfNeeded:(id)needed completion:(id)completion
{
  neededCopy = needed;
  completionCopy = completion;
  if (completionCopy)
  {
    if (neededCopy && [MEMORY[0x1E696F470] isLocationShiftRequiredForLocation:neededCopy])
    {
      _locationShifter = [(PKTransactionMapView *)self _locationShifter];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__PKTransactionMapView__shiftLocationIfNeeded_completion___block_invoke;
      v9[3] = &unk_1E8015080;
      v11 = completionCopy;
      v10 = neededCopy;
      [_locationShifter shiftLocation:v10 withCompletionHandler:v9];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, neededCopy);
    }
  }
}

void __58__PKTransactionMapView__shiftLocationIfNeeded_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKTransactionMapView: Failed to successfully shift location requiring shift. Falling back to original location.", v6, 2u);
    }

    v4 = *(*(a1 + 40) + 16);
  }

  v4();
}

- (id)_locationShifter
{
  locationShifter = self->_locationShifter;
  if (!locationShifter)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696F470]);
    v5 = self->_locationShifter;
    self->_locationShifter = v4;

    locationShifter = self->_locationShifter;
  }

  return locationShifter;
}

- (id)mapView:(id)view viewForAnnotation:(id)annotation
{
  v5 = MEMORY[0x1E696F2C8];
  annotationCopy = annotation;
  v7 = [[v5 alloc] initWithAnnotation:annotationCopy reuseIdentifier:0];

  [v7 sizeToFit];
  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  merchant = merchant;
  if (!merchant)
  {
    merchant = self->_merchant;
  }

  v10 = merchant;

  v11 = PKMapsStylingInfoForMerchant();
  if (v10 || [(PKPaymentTransaction *)self->_transaction transactionType]!= 2)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    [v7 _setWalletMerchantStylingInfo:v11];
    PKUIScreenScale();
    v12 = PKMapsColorForMerchant();
    [v7 setMarkerTintColor:v12];
  }

  else
  {
    [(PKPaymentTransaction *)self->_transaction transitType];
    v12 = PKStyleAttributesForTransitType();
    [v7 _setStyleAttributes:v12];
  }

LABEL_9:

  return v7;
}

@end
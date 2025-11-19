@interface PKTransactionMapView
- ($0EA7EFFD5C9A8626BF46133D7244B340)_mapRectForTransaction:(id)a3;
- (PKTransactionMapView)initWithFrame:(CGRect)a3;
- (id)_annotationsForTransaction:(id)a3;
- (id)_locationShifter;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)_centerMapAnimated:(BOOL)a3;
- (void)_createAnnotationsForTransaction:(id)a3;
- (void)_shiftLocationIfNeeded:(id)a3 completion:(id)a4;
- (void)_updateLocations;
- (void)layoutSubviews;
- (void)setMerchant:(id)a3;
- (void)setTransaction:(id)a3;
- (void)setUsesDarkAppearance:(BOOL)a3;
@end

@implementation PKTransactionMapView

- (PKTransactionMapView)initWithFrame:(CGRect)a3
{
  v10.receiver = self;
  v10.super_class = PKTransactionMapView;
  v3 = [(PKTransactionMapView *)&v10 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [MEMORY[0x1E696F350] filterIncludingAllCategories];
    [(MKMapView *)v7 setPointOfInterestFilter:v8];

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

- (void)setTransaction:(id)a3
{
  v5 = a3;
  if (self->_transaction != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_transaction, a3);
    v6 = [(MKMapView *)self->_internalMapView annotations];
    if ([v6 count])
    {
      [(MKMapView *)self->_internalMapView removeAnnotations:v6];
    }

    [(PKTransactionMapView *)self _updateLocations];

    v5 = v7;
  }
}

- (void)setMerchant:(id)a3
{
  v5 = a3;
  if (self->_merchant != v5)
  {
    v7 = v5;
    objc_storeStrong(&self->_merchant, a3);
    v6 = [(MKMapView *)self->_internalMapView annotations];
    if ([v6 count])
    {
      [(MKMapView *)self->_internalMapView removeAnnotations:v6];
    }

    [(PKTransactionMapView *)self _updateLocations];

    v5 = v7;
  }
}

- (void)setUsesDarkAppearance:(BOOL)a3
{
  if (self->_usesDarkAppearance == !a3)
  {
    self->_usesDarkAppearance = a3;
    [(MKMapView *)self->_internalMapView _setShowsNightMode:?];
  }
}

- (void)_createAnnotationsForTransaction:(id)a3
{
  v4 = [(PKTransactionMapView *)self _annotationsForTransaction:a3];
  if ([v4 count])
  {
    [(MKMapView *)self->_internalMapView addAnnotations:v4];
  }

  [(PKTransactionMapView *)self _centerMapAnimated:1];
}

- (void)_centerMapAnimated:(BOOL)a3
{
  v3 = a3;
  p_lastLaidBounds = &self->_lastLaidBounds;
  [(PKTransactionMapView *)self bounds];
  p_lastLaidBounds->origin.x = v6;
  p_lastLaidBounds->origin.y = v7;
  p_lastLaidBounds->size.width = v8;
  p_lastLaidBounds->size.height = v9;
  [(PKTransactionMapView *)self _mapRectForTransaction:self->_transaction];
  internalMapView = self->_internalMapView;

  [(MKMapView *)internalMapView setVisibleMapRect:v3 animated:?];
}

- (id)_annotationsForTransaction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    goto LABEL_7;
  }

  v6 = [v4 transactionType];
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v6 != 2)
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
      v10 = [v5 merchant];
      merchant = v10;
      if (!v10)
      {
        merchant = self->_merchant;
      }

      v12 = merchant;

      v13 = [(PKMerchant *)v12 displayName];
      if (([(PKMerchant *)v12 shouldIgnoreMapsMatches]& 1) == 0)
      {
        v14 = [(PKMerchant *)v12 mapsMerchant];
        v15 = [v14 name];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v13;
        }

        v18 = v17;

        v13 = v18;
      }

      [v9 setTitle:v13];
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

- ($0EA7EFFD5C9A8626BF46133D7244B340)_mapRectForTransaction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || [v4 transactionType] != 2)
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
    v23 = [(CLLocation *)v22 coordinate];
    v25 = v24;
    v27 = v26;
    v28 = MEMORY[0x1BFB41750](v23) * 300.0;
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
  v12 = [(CLLocation *)self->_endStationLocation coordinate];
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
  v3 = [(PKPaymentTransaction *)self->_transaction preferredLocation];
  v4 = v3;
  if (v3)
  {
    v38 = v3;
  }

  else
  {
    v5 = [(PKMerchant *)self->_merchant mapsMerchant];
    v38 = [v5 location];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__7;
  v35 = __Block_byref_object_dispose__7;
  v36 = [(PKPaymentTransaction *)self->_transaction startStationLocation];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = [(PKPaymentTransaction *)self->_transaction endStationLocation];
  v6 = [(PKPaymentTransaction *)self->_transaction transactionType];
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
  if (v6 == 2)
  {
    v10 = [(PKPaymentTransaction *)self->_transaction startStationLocation];
    if (v10)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __40__PKTransactionMapView__updateLocations__block_invoke_4;
      v20[3] = &unk_1E8015008;
      v20[4] = &v31;
      v9[2](v9, v10, v20);
    }

    v11 = [(PKPaymentTransaction *)self->_transaction endStationLocation];

    if (v11)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __40__PKTransactionMapView__updateLocations__block_invoke_5;
      v19[3] = &unk_1E8015008;
      v19[4] = &v25;
      v9[2](v9, v11, v19);
    }
  }

  else
  {
    v11 = 0;
  }

  if (!v32[5] && !v26[5])
  {
    v12 = [(PKPaymentTransaction *)self->_transaction preferredLocation];

    v11 = v12;
    if (v12 || (-[PKMerchant mapsMerchant](self->_merchant, "mapsMerchant"), v13 = objc_claimAutoreleasedReturnValue(), [v13 location], v11 = objc_claimAutoreleasedReturnValue(), v13, v11))
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __40__PKTransactionMapView__updateLocations__block_invoke_6;
      v18[3] = &unk_1E8015008;
      v18[4] = v37;
      v9[2](v9, v11, v18);
    }
  }

  v14 = [MEMORY[0x1E695DFB0] null];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __40__PKTransactionMapView__updateLocations__block_invoke_7;
  v16[3] = &unk_1E8015058;
  objc_copyWeak(&v17, &location);
  v16[4] = v37;
  v16[5] = &v31;
  v16[6] = &v25;
  v15 = [v8 evaluateWithInput:v14 completion:v16];

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

- (void)_shiftLocationIfNeeded:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (v6 && [MEMORY[0x1E696F470] isLocationShiftRequiredForLocation:v6])
    {
      v8 = [(PKTransactionMapView *)self _locationShifter];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __58__PKTransactionMapView__shiftLocationIfNeeded_completion___block_invoke;
      v9[3] = &unk_1E8015080;
      v11 = v7;
      v10 = v6;
      [v8 shiftLocation:v10 withCompletionHandler:v9];
    }

    else
    {
      (*(v7 + 2))(v7, v6);
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

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v5 = MEMORY[0x1E696F2C8];
  v6 = a4;
  v7 = [[v5 alloc] initWithAnnotation:v6 reuseIdentifier:0];

  [v7 sizeToFit];
  v8 = [(PKPaymentTransaction *)self->_transaction merchant];
  merchant = v8;
  if (!v8)
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
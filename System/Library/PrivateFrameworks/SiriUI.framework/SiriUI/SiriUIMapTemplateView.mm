@interface SiriUIMapTemplateView
- (SiriUIMapTemplateView)initWithDataSource:(id)source;
- (SiriUIMapTemplateViewDelegate)delegate;
- (double)desiredHeight;
- (id)_configuredFootnoteDescriptorLabel;
- (id)_configuredFootnoteLabel;
- (id)_configuredLabel;
- (void)_handleTapGesture:(id)gesture;
- (void)_mapButtonPressed:(id)pressed;
- (void)_notifyDelegateOfLocationUpdateIfNeededWithPlacemark:(id)placemark;
- (void)layoutSubviews;
- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated;
- (void)prepareForDismissal;
- (void)reloadData;
- (void)setDelegate:(id)delegate;
@end

@implementation SiriUIMapTemplateView

- (SiriUIMapTemplateView)initWithDataSource:(id)source
{
  v21.receiver = self;
  v21.super_class = SiriUIMapTemplateView;
  v3 = [(SiriUIBaseTemplateView *)&v21 initWithDataSource:source];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CD4EC8]);
    mapView = v3->_mapView;
    v3->_mapView = v4;

    [(SiriUIMapTemplateView *)v3 addSubview:v3->_mapView];
    v6 = objc_alloc_init(MEMORY[0x277CD4F08]);
    [v6 setRepresentation:2];
    v7 = [objc_alloc(MEMORY[0x277CD4EF0]) initWithAnnotation:v6 reuseIdentifier:@"SiriUIMapTemplateViewPinAnnotationViewReuseIdentifier"];
    pinAnnotationView = v3->_pinAnnotationView;
    v3->_pinAnnotationView = v7;

    [(SiriUIMapTemplateView *)v3 addSubview:v3->_pinAnnotationView];
    _configuredFootnoteDescriptorLabel = [(SiriUIMapTemplateView *)v3 _configuredFootnoteDescriptorLabel];
    footnoteDescriptorLabel = v3->_footnoteDescriptorLabel;
    v3->_footnoteDescriptorLabel = _configuredFootnoteDescriptorLabel;

    [(SiriUIMapTemplateView *)v3 addSubview:v3->_footnoteDescriptorLabel];
    _configuredFootnoteLabel = [(SiriUIMapTemplateView *)v3 _configuredFootnoteLabel];
    footnoteLabel = v3->_footnoteLabel;
    v3->_footnoteLabel = _configuredFootnoteLabel;

    [(SiriUIMapTemplateView *)v3 addSubview:v3->_footnoteLabel];
    v13 = objc_alloc(MEMORY[0x277D75220]);
    v14 = [v13 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    mapButton = v3->_mapButton;
    v3->_mapButton = v14;

    [(SiriUIMapTemplateView *)v3 addSubview:v3->_mapButton];
    [(UIButton *)v3->_mapButton addTarget:v3 action:sel__mapButtonPressed_ forControlEvents:64];
    v16 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v3 action:sel__handleTapGesture_];
    tapRecognizer = v3->_tapRecognizer;
    v3->_tapRecognizer = v16;

    [(SiriUIMapTemplateView *)v3 addGestureRecognizer:v3->_tapRecognizer];
    v18 = objc_alloc_init(MEMORY[0x277CBFBE8]);
    geocoder = v3->_geocoder;
    v3->_geocoder = v18;

    [(SiriUIMapTemplateView *)v3 setClipsToBounds:1];
    [(SiriUIMapTemplateView *)v3 reloadData];
  }

  return v3;
}

- (void)reloadData
{
  dataSource = [(SiriUIBaseTemplateView *)self dataSource];
  [(MKMapView *)self->_mapView setDelegate:0];
  mapView = self->_mapView;
  annotations = [(MKMapView *)mapView annotations];
  [(MKMapView *)mapView removeAnnotations:annotations];

  cLLocation = [dataSource CLLocation];
  [cLLocation coordinate];
  v7 = v6;
  v9 = v8;

  [(MKMapView *)self->_mapView setRegion:1 animated:v7, v9, 0.005, 0.005];
  [(MKMapView *)self->_mapView setDelegate:self];
  pinAnnotationView = self->_pinAnnotationView;
  dataSource2 = [(SiriUIBaseTemplateView *)self dataSource];
  pinColor = [dataSource2 pinColor];
  if (pinColor)
  {
    [(MKPinAnnotationView *)pinAnnotationView setPinTintColor:pinColor];
  }

  else
  {
    redColor = [MEMORY[0x277D75348] redColor];
    [(MKPinAnnotationView *)pinAnnotationView setPinTintColor:redColor];
  }

  footnoteDescriptorLabel = self->_footnoteDescriptorLabel;
  footnoteDescriptor = [dataSource footnoteDescriptor];
  [(UILabel *)footnoteDescriptorLabel setText:footnoteDescriptor];

  footnoteLabel = self->_footnoteLabel;
  footnote = [dataSource footnote];
  [(UILabel *)footnoteLabel setText:footnote];

  [(SiriUIMapTemplateView *)self setNeedsLayout];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    [(SiriUIMapTemplateView *)self setNeedsLayout];
    v5 = obj;
  }
}

- (double)desiredHeight
{
  dataSource = [(SiriUIBaseTemplateView *)self dataSource];
  v3 = [dataSource mapSizeValue] == 0;

  return dbl_2694DDC30[v3];
}

- (void)layoutSubviews
{
  [(SiriUIMapTemplateView *)self bounds];
  height = v31.size.height;
  width = v31.size.width;
  v3 = CGRectGetWidth(v31);
  semanticContentAttribute = [(SiriUIMapTemplateView *)self semanticContentAttribute];
  templatedSuperview = [(SiriUIBaseTemplateView *)self templatedSuperview];
  [templatedSuperview templatedContentMargins];
  v7 = v6;

  dataSource = [(SiriUIBaseTemplateView *)self dataSource];
  mapSizeValue = [dataSource mapSizeValue];

  dataSource2 = [(SiriUIBaseTemplateView *)self dataSource];
  interactive = [dataSource2 interactive];

  [(MKMapView *)self->_mapView setDelegate:0];
  v12 = dbl_2694DDC40[mapSizeValue != 1];
  [(MKMapView *)self->_mapView setFrame:0.0, 0.0, v3, v12];
  [(MKMapView *)self->_mapView setScrollEnabled:interactive];
  [(MKMapView *)self->_mapView setZoomEnabled:interactive];
  if (interactive)
  {
    [(UIButton *)self->_mapButton removeFromSuperview];
  }

  else
  {
    [(SiriUIMapTemplateView *)self addSubview:self->_mapButton];
  }

  v13 = mapSizeValue != 1;
  [(UIButton *)self->_mapButton setFrame:0.0, 0.0, v3, v12];
  pinAnnotationView = self->_pinAnnotationView;
  [(MKPinAnnotationView *)pinAnnotationView frame];
  v32.origin.x = 0.0;
  v32.origin.y = 0.0;
  v32.size.width = v3;
  v32.size.height = v12;
  CGRectGetMidX(v32);
  v33.origin.x = 0.0;
  v33.origin.y = 0.0;
  v33.size.width = v3;
  v33.size.height = v12;
  CGRectGetMidY(v33);
  UIRectCenteredAboutPoint();
  [(MKPinAnnotationView *)pinAnnotationView setFrame:?];
  [(UILabel *)self->_footnoteDescriptorLabel setHidden:v13];
  [(UILabel *)self->_footnoteLabel setHidden:v13];
  v16 = height;
  v15 = width;
  [(UILabel *)self->_footnoteDescriptorLabel sizeThatFits:width, height];
  v19 = v18;
  v20 = v3 - v18;
  v21 = v20 - v7;
  if (semanticContentAttribute == 4)
  {
    v22 = v20 - v7;
  }

  else
  {
    v22 = v7;
  }

  [(UILabel *)self->_footnoteDescriptorLabel setFrame:v22, 0.0, v19, v17, *&height, *&width];
  [(UILabel *)self->_footnoteDescriptorLabel _setLastLineBaselineFrameOriginY:308.0];
  [(UILabel *)self->_footnoteLabel sizeThatFits:v15, v16];
  v25 = v24;
  v26 = v21 + -10.0 - v24;
  if (semanticContentAttribute != 4)
  {
    v26 = v7 + v19 + 10.0;
  }

  [(UILabel *)self->_footnoteLabel setFrame:v26, 0.0, v25, v23];
  [(UILabel *)self->_footnoteLabel _setLastLineBaselineFrameOriginY:308.0];
  mapView = self->_mapView;

  [(MKMapView *)mapView setDelegate:self];
}

- (void)prepareForDismissal
{
  [(CLGeocoder *)self->_geocoder cancelGeocode];
  currentPlacemark = self->_currentPlacemark;

  [(SiriUIMapTemplateView *)self _notifyDelegateOfLocationUpdateIfNeededWithPlacemark:currentPlacemark];
}

- (void)_notifyDelegateOfLocationUpdateIfNeededWithPlacemark:(id)placemark
{
  if (self->_needsToNotifyDelegateOfLocationUpdate)
  {
    placemarkCopy = placemark;
    delegate = [(SiriUIMapTemplateView *)self delegate];
    [delegate mapTemplateView:self didModifyPlacemark:placemarkCopy];

    self->_needsToNotifyDelegateOfLocationUpdate = 0;
  }
}

- (id)_configuredFootnoteDescriptorLabel
{
  _configuredLabel = [(SiriUIMapTemplateView *)self _configuredLabel];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [_configuredLabel setFont:v3];

  siriui_platterSemiTransparentTextColor = [MEMORY[0x277D75348] siriui_platterSemiTransparentTextColor];
  [_configuredLabel setTextColor:siriui_platterSemiTransparentTextColor];

  return _configuredLabel;
}

- (id)_configuredFootnoteLabel
{
  _configuredLabel = [(SiriUIMapTemplateView *)self _configuredLabel];
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [_configuredLabel setFont:v3];

  return _configuredLabel;
}

- (id)_configuredLabel
{
  v2 = objc_alloc(MEMORY[0x277D756B8]);
  v3 = [v2 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  siriui_platterTextColor = [MEMORY[0x277D75348] siriui_platterTextColor];
  [v3 setTextColor:siriui_platterTextColor];

  return v3;
}

- (void)_mapButtonPressed:(id)pressed
{
  delegate = [(SiriUIMapTemplateView *)self delegate];
  [delegate mapTemplateViewDidSelectMap:self];
}

- (void)mapView:(id)view regionDidChangeAnimated:(BOOL)animated
{
  viewCopy = view;
  self->_needsToNotifyDelegateOfLocationUpdate = 1;
  [(MKMapView *)self->_mapView centerCoordinate];
  v8 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v6 longitude:v7];
  v9 = [objc_alloc(MEMORY[0x277CBFC40]) initWithLocation:v8 addressDictionary:0 region:0 areasOfInterest:0];
  currentPlacemark = self->_currentPlacemark;
  self->_currentPlacemark = v9;

  objc_initWeak(&location, self);
  geocoder = self->_geocoder;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__SiriUIMapTemplateView_mapView_regionDidChangeAnimated___block_invoke;
  v13[3] = &unk_279C5A3B0;
  v12 = v8;
  v14 = v12;
  objc_copyWeak(&v16, &location);
  selfCopy = self;
  [(CLGeocoder *)geocoder reverseGeocodeLocation:v12 completionHandler:v13];
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);
}

void __57__SiriUIMapTemplateView_mapView_regionDidChangeAnimated___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __57__SiriUIMapTemplateView_mapView_regionDidChangeAnimated___block_invoke_cold_1(a1, v6, v7);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (v5 && WeakRetained)
  {
    v10 = [v5 firstObject];
    v11 = v9[58];
    v9[58] = v10;

    [v9 _notifyDelegateOfLocationUpdateIfNeededWithPlacemark:v9[58]];
    v12 = [v9 _configuredFootnoteLabel];
    v13 = [v9 _configuredFootnoteDescriptorLabel];
    v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v15 = [v9[58] name];
    if (v15)
    {
      v16 = v15;
      v17 = [v14 siriUILocalizedStringForKey:@"MAP_TEMPLATE_LOCATION_DESCRIPTOR"];
    }

    else
    {
      v18 = [v9[58] postalAddress];
      v19 = objc_alloc_init(MEMORY[0x277CBDB80]);
      v16 = [v19 stringFromPostalAddress:v18];
      v17 = [v14 siriUILocalizedStringForKey:@"MAP_TEMPLATE_ADDRESS_DESCRIPTOR"];
    }

    [v12 setText:v16];
    [v9[55] frame];
    [v12 setFrame:?];
    [v12 sizeToFit];
    [v12 setAlpha:0.0];
    [v13 setText:v17];
    [v9[54] frame];
    [v13 setFrame:?];
    [v13 sizeToFit];
    [v13 setAlpha:0.0];
    [v9 addSubview:v12];
    [v9 addSubview:v13];
    v20 = MEMORY[0x277D75D18];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __57__SiriUIMapTemplateView_mapView_regionDidChangeAnimated___block_invoke_24;
    v26[3] = &unk_279C5A040;
    v26[4] = v9;
    v27 = v12;
    v28 = v13;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __57__SiriUIMapTemplateView_mapView_regionDidChangeAnimated___block_invoke_2;
    v23[3] = &unk_279C5A388;
    v23[4] = v9;
    v24 = v27;
    v25 = v28;
    v21 = v28;
    v22 = v27;
    [v20 animateWithDuration:0 delay:v26 usingSpringWithDamping:v23 initialSpringVelocity:0.5 options:0.0 animations:1.0 completion:0.5];
  }
}

uint64_t __57__SiriUIMapTemplateView_mapView_regionDidChangeAnimated___block_invoke_24(uint64_t a1)
{
  [*(*(a1 + 32) + 440) setAlpha:0.0];
  [*(*(a1 + 32) + 432) setAlpha:0.0];
  [*(a1 + 40) setAlpha:1.0];
  v2 = *(a1 + 48);

  return [v2 setAlpha:1.0];
}

void __57__SiriUIMapTemplateView_mapView_regionDidChangeAnimated___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 440) removeFromSuperview];
  [*(*(a1 + 32) + 432) removeFromSuperview];
  objc_storeStrong((*(a1 + 32) + 440), *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = (*(a1 + 32) + 432);

  objc_storeStrong(v3, v2);
}

- (void)_handleTapGesture:(id)gesture
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[SiriUIMapTemplateView _handleTapGesture:]";
    _os_log_impl(&dword_26948D000, v3, OS_LOG_TYPE_DEFAULT, "%s Ignoring tap", &v4, 0xCu);
  }
}

- (SiriUIMapTemplateViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __57__SiriUIMapTemplateView_mapView_regionDidChangeAnimated___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 136315651;
  v5 = "[SiriUIMapTemplateView mapView:regionDidChangeAnimated:]_block_invoke";
  v6 = 2113;
  v7 = v3;
  v8 = 2114;
  v9 = a2;
  _os_log_error_impl(&dword_26948D000, log, OS_LOG_TYPE_ERROR, "%s Error reverse-geocoding location %{private}@, %{public}@", &v4, 0x20u);
}

@end
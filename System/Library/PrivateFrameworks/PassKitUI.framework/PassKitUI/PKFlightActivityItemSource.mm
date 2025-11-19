@interface PKFlightActivityItemSource
+ (id)placeholderForInvitation:(id)a3;
- (PKFlightActivityItemSource)initWithInvitation:(id)a3;
- (id)activityViewControllerLinkMetadata:(id)a3;
@end

@implementation PKFlightActivityItemSource

- (PKFlightActivityItemSource)initWithInvitation:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = PKFlightActivityItemSource;
  v5 = [(PKFlightActivityItemSource *)&v35 init];
  if (v5)
  {
    v6 = [v4 flight];
    v7 = MEMORY[0x1E696AEC0];
    v8 = [v6 airlineName];
    v9 = [v6 airlineCode];
    v10 = [v7 stringWithFormat:@"%@ • %@ %d", v8, v9, objc_msgSend(v6, "flightNumber")];
    title = v5->_title;
    v5->_title = v10;

    v12 = [v6 arrival];
    v13 = [v12 currentGateTime];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v16 = [v6 arrival];
      v15 = [v16 scheduledGateTime];
    }

    v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
    v18 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [v17 setLocale:v18];

    [v17 setLocalizedDateFormatFromTemplate:@"M/d/yy"];
    v19 = [v17 stringFromDate:v15];
    v20 = PKLocalizedFlightString(&cfstr_FlightShareShe.isa, &stru_1F3BD5BF0.isa, v19);
    subtitle = v5->_subtitle;
    v5->_subtitle = v20;

    v22 = [(NSString *)v5->_title copy];
    value = v5->_value;
    v5->_value = v22;

    v24 = [v4 placeholderImageData];
    if (v24)
    {
      v25 = [MEMORY[0x1E69DCAB8] imageWithData:v24 scale:PKUIScreenScale()];
      v26 = 0;
      iconImage = v5->_iconImage;
      v5->_iconImage = v25;
    }

    else
    {
      iconImage = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
      v28 = PKUIGetWalletAppIconWithDescriptor(iconImage);
      v29 = v5->_iconImage;
      v5->_iconImage = v28;

      v26 = objc_alloc_init(MEMORY[0x1E696EC80]);
      [v26 setType:7];
    }

    v30 = objc_alloc_init(MEMORY[0x1E696ACA0]);
    if (v5->_iconImage)
    {
      v31 = [objc_alloc(MEMORY[0x1E696EC60]) initWithPlatformImage:v5->_iconImage];
    }

    else
    {
      v31 = 0;
    }

    v32 = [objc_alloc(MEMORY[0x1E696EC60]) initWithItemProvider:v30 properties:v26 placeholderImage:v31];
    icon = v5->_icon;
    v5->_icon = v32;
  }

  return v5;
}

+ (id)placeholderForInvitation:(id)a3
{
  v3 = a3;
  v4 = [[PKFlightActivityItemSource alloc] initWithInvitation:v3];

  return v4;
}

- (id)activityViewControllerLinkMetadata:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696EC98]);
  [v4 setTitle:self->_title];
  [v4 setSummary:self->_subtitle];
  [v4 setImage:self->_icon];

  return v4;
}

@end
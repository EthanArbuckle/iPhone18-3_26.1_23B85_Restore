@interface PKFlightActivityItemSource
+ (id)placeholderForInvitation:(id)invitation;
- (PKFlightActivityItemSource)initWithInvitation:(id)invitation;
- (id)activityViewControllerLinkMetadata:(id)metadata;
@end

@implementation PKFlightActivityItemSource

- (PKFlightActivityItemSource)initWithInvitation:(id)invitation
{
  invitationCopy = invitation;
  v35.receiver = self;
  v35.super_class = PKFlightActivityItemSource;
  v5 = [(PKFlightActivityItemSource *)&v35 init];
  if (v5)
  {
    flight = [invitationCopy flight];
    v7 = MEMORY[0x1E696AEC0];
    airlineName = [flight airlineName];
    airlineCode = [flight airlineCode];
    v10 = [v7 stringWithFormat:@"%@ • %@ %d", airlineName, airlineCode, objc_msgSend(flight, "flightNumber")];
    title = v5->_title;
    v5->_title = v10;

    arrival = [flight arrival];
    currentGateTime = [arrival currentGateTime];
    v14 = currentGateTime;
    if (currentGateTime)
    {
      scheduledGateTime = currentGateTime;
    }

    else
    {
      arrival2 = [flight arrival];
      scheduledGateTime = [arrival2 scheduledGateTime];
    }

    v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
    autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    [v17 setLocale:autoupdatingCurrentLocale];

    [v17 setLocalizedDateFormatFromTemplate:@"M/d/yy"];
    v19 = [v17 stringFromDate:scheduledGateTime];
    v20 = PKLocalizedFlightString(&cfstr_FlightShareShe.isa, &stru_1F3BD5BF0.isa, v19);
    subtitle = v5->_subtitle;
    v5->_subtitle = v20;

    v22 = [(NSString *)v5->_title copy];
    value = v5->_value;
    v5->_value = v22;

    placeholderImageData = [invitationCopy placeholderImageData];
    if (placeholderImageData)
    {
      v25 = [MEMORY[0x1E69DCAB8] imageWithData:placeholderImageData scale:PKUIScreenScale()];
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

+ (id)placeholderForInvitation:(id)invitation
{
  invitationCopy = invitation;
  v4 = [[PKFlightActivityItemSource alloc] initWithInvitation:invitationCopy];

  return v4;
}

- (id)activityViewControllerLinkMetadata:(id)metadata
{
  v4 = objc_alloc_init(MEMORY[0x1E696EC98]);
  [v4 setTitle:self->_title];
  [v4 setSummary:self->_subtitle];
  [v4 setImage:self->_icon];

  return v4;
}

@end
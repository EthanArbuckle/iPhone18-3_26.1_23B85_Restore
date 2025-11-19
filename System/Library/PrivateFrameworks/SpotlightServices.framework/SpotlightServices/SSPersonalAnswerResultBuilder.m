@interface SSPersonalAnswerResultBuilder
+ (BOOL)supportsResult:(id)a3;
- (SSPersonalAnswerResultBuilder)initWithResult:(id)a3;
- (id)buildBadgingImageWithThumbnail:(id)a3;
- (id)buildDescriptions;
- (id)buildInlineCardSections;
- (id)buildThumbnail;
- (id)buildTitle;
- (id)processRawTitleString:(id)a3;
@end

@implementation SSPersonalAnswerResultBuilder

+ (BOOL)supportsResult:(id)a3
{
  v4 = a3;
  v8.receiver = a1;
  v8.super_class = &OBJC_METACLASS___SSPersonalAnswerResultBuilder;
  if (objc_msgSendSuper2(&v8, sel_supportsResult_, v4))
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 applicationBundleIdentifier];
    v5 = [v6 isEqualToString:@"com.apple.spotlight.events"];
  }

  return v5;
}

- (SSPersonalAnswerResultBuilder)initWithResult:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SSPersonalAnswerResultBuilder;
  v5 = [(SSResultBuilder *)&v12 initWithResult:v4];
  if (v5)
  {
    v6 = [v4 valueForAttribute:*MEMORY[0x1E6963F48] withType:objc_opt_class()];
    [(SSPersonalAnswerResultBuilder *)v5 setDisplayName:v6];

    v7 = [v4 valueForAttribute:*MEMORY[0x1E6964C28] withType:objc_opt_class()];
    v8 = [(SSPersonalAnswerResultBuilder *)v5 processRawTitleString:v7];
    [(SSPersonalAnswerResultBuilder *)v5 setTitleString:v8];

    v9 = [v4 valueForAttribute:*MEMORY[0x1E6964B30] withType:objc_opt_class()];
    [(SSPersonalAnswerResultBuilder *)v5 setStartDate:v9];

    v10 = [v4 valueForAttribute:*MEMORY[0x1E6963FE8] withType:objc_opt_class()];
    [(SSPersonalAnswerResultBuilder *)v5 setEndDate:v10];
  }

  return v5;
}

- (id)processRawTitleString:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"Flight: "])
  {
    v5 = [v4 stringByReplacingOccurrencesOfString:@": " withString:@" "];

    [(SSPersonalAnswerResultBuilder *)self setIsFlight:1];
  }

  else if ([v4 hasPrefix:@"Stay: "])
  {
    v5 = [v4 stringByReplacingOccurrencesOfString:@"Stay: " withString:&stru_1F556FE60];

    [(SSPersonalAnswerResultBuilder *)self setIsHotel:1];
  }

  else
  {
    v5 = v4;
    if ([v4 hasPrefix:@"Reservation: "])
    {
      v5 = [v4 stringByReplacingOccurrencesOfString:@"Reservation: " withString:&stru_1F556FE60];

      [(SSPersonalAnswerResultBuilder *)self setIsRestaurant:1];
    }
  }

  v6 = v5;

  return v5;
}

- (id)buildInlineCardSections
{
  v4.receiver = self;
  v4.super_class = SSPersonalAnswerResultBuilder;
  v2 = [(SSResultBuilder *)&v4 buildInlineCardSections];

  return v2;
}

- (id)buildTitle
{
  v3 = [(SSPersonalAnswerResultBuilder *)self displayName];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [(SSPersonalAnswerResultBuilder *)self displayName];
    goto LABEL_5;
  }

  v6 = [(SSPersonalAnswerResultBuilder *)self titleString];
  v7 = [v6 length];

  if (v7)
  {
    v5 = [(SSPersonalAnswerResultBuilder *)self titleString];
LABEL_5:
    v8 = v5;
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v12 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8 = [v12 localizedStringForKey:@"NO_TITLE" value:&stru_1F556FE60 table:@"SpotlightServices"];

  if (!v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  v9 = [MEMORY[0x1E69CA3A0] textWithString:v8];
  v10 = [(SSPersonalAnswerResultBuilder *)self displayName];
  v11 = [v10 length];

  if (v11)
  {
    [v9 setMaxLines:2];
  }

LABEL_10:

  return v9;
}

- (id)buildDescriptions
{
  v18[3] = *MEMORY[0x1E69E9840];
  v3 = [(SSPersonalAnswerResultBuilder *)self displayName];

  if (v3)
  {
    v3 = self->_titleString;
  }

  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setDateFormat:@"MMMM d, yyyy"];
  v5 = [(SSPersonalAnswerResultBuilder *)self startDate];
  v6 = [v4 stringFromDate:v5];

  [v4 setDateFormat:@"h:mm a"];
  v7 = [(SSPersonalAnswerResultBuilder *)self startDate];
  v8 = [v4 stringFromDate:v7];

  if ([(SSPersonalAnswerResultBuilder *)self isFlight])
  {
    v9 = [(SSPersonalAnswerResultBuilder *)self endDate];
    v10 = [v4 stringFromDate:v9];

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ to %@", v8, v10];
  }

  else
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Check in at %@", v8];
  }

  v12 = [MEMORY[0x1E69CA3A0] textWithString:v3];
  v18[0] = v12;
  v13 = [MEMORY[0x1E69CA3A0] textWithString:v6];
  v18[1] = v13;
  v14 = [MEMORY[0x1E69CA3A0] textWithString:v11];
  v18[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)buildThumbnail
{
  v3 = objc_opt_new();
  if ([(SSPersonalAnswerResultBuilder *)self isFlight])
  {
    v4 = @"airplane.circle.fill";
  }

  else if ([(SSPersonalAnswerResultBuilder *)self isHotel])
  {
    v4 = @"bed.double.circle.fill";
  }

  else
  {
    if (![(SSPersonalAnswerResultBuilder *)self isRestaurant])
    {
      goto LABEL_8;
    }

    v4 = @"fork.knife.circle.fill";
  }

  [v3 setSymbolName:v4];
LABEL_8:
  [v3 setPrimaryColor:4];

  return v3;
}

- (id)buildBadgingImageWithThumbnail:(id)a3
{
  v3 = objc_opt_new();
  [v3 setSymbolName:@"envelope.fill"];
  [v3 setPrimaryColor:7];

  return v3;
}

@end
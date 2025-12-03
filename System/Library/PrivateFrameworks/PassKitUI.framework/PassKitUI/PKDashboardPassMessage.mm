@interface PKDashboardPassMessage
+ (id)messageFromDialogRequest:(id)request withAction:(id)action;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToMessage:(id)message;
- (PKDashboardPassMessage)init;
- (void)setImage:(id)image;
@end

@implementation PKDashboardPassMessage

+ (id)messageFromDialogRequest:(id)request withAction:(id)action
{
  requestCopy = request;
  actionCopy = action;
  buttonActions = [requestCopy buttonActions];
  v8 = [buttonActions pk_firstObjectPassingTest:&__block_literal_global_13];

  v9 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v9 setType:2];
  identifier = [requestCopy identifier];
  if (identifier)
  {
    [(PKDashboardPassMessage *)v9 setIdentifier:identifier];
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [(PKDashboardPassMessage *)v9 setIdentifier:uUIDString];
  }

  [(PKDashboardPassMessage *)v9 setDialogRequest:requestCopy];
  deepLink = [v8 deepLink];
  if (deepLink)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__PKDashboardPassMessage_messageFromDialogRequest_withAction___block_invoke_2;
    v15[3] = &unk_1E8012268;
    v17 = actionCopy;
    v16 = deepLink;
    [(PKDashboardPassMessage *)v9 setActionOnButtonPress:v15];
  }

  return v9;
}

BOOL __62__PKDashboardPassMessage_messageFromDialogRequest_withAction___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 style] == 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = [v2 deepLink];
    v3 = v4 != 0;
  }

  return v3;
}

- (PKDashboardPassMessage)init
{
  v3.receiver = self;
  v3.super_class = PKDashboardPassMessage;
  result = [(PKDashboardPassMessage *)&v3 init];
  if (result)
  {
    result->_imageContentMode = 1;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDashboardPassMessage *)self isEqualToMessage:v5];
  }

  return v6;
}

- (BOOL)isEqualToMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  if (self->_type != *(messageCopy + 3))
  {
    goto LABEL_61;
  }

  v6 = *(messageCopy + 2);
  v7 = self->_identifier;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    if (!v7 || !v8)
    {
      goto LABEL_60;
    }

    v10 = [(NSString *)v7 isEqualToString:v8];

    if (!v10)
    {
      goto LABEL_61;
    }
  }

  if (self->_type != 2)
  {
    v20 = *(v5 + 4);
    v7 = self->_title;
    v21 = v20;
    v9 = v21;
    if (v7 == v21)
    {
    }

    else
    {
      if (!v7 || !v21)
      {
        goto LABEL_60;
      }

      v22 = [(NSString *)v7 isEqualToString:v21];

      if (!v22)
      {
        goto LABEL_61;
      }
    }

    v28 = *(v5 + 5);
    v7 = self->_secondaryTitle;
    v29 = v28;
    v9 = v29;
    if (v7 == v29)
    {
    }

    else
    {
      if (!v7 || !v29)
      {
        goto LABEL_60;
      }

      v30 = [(NSString *)v7 isEqualToString:v29];

      if (!v30)
      {
        goto LABEL_61;
      }
    }

    v31 = *(v5 + 6);
    v7 = self->_message;
    v32 = v31;
    v9 = v32;
    if (v7 == v32)
    {
    }

    else
    {
      if (!v7 || !v32)
      {
        goto LABEL_60;
      }

      v33 = [(NSString *)v7 isEqualToString:v32];

      if (!v33)
      {
        goto LABEL_61;
      }
    }

    v34 = *(v5 + 8);
    v7 = self->_secondaryMessage;
    v35 = v34;
    v9 = v35;
    if (v7 == v35)
    {
    }

    else
    {
      if (!v7 || !v35)
      {
        goto LABEL_60;
      }

      v36 = [(NSString *)v7 isEqualToString:v35];

      if (!v36)
      {
        goto LABEL_61;
      }
    }

    v37 = *(v5 + 10);
    v7 = self->_buttonTitle;
    v38 = v37;
    v9 = v38;
    if (v7 == v38)
    {
    }

    else
    {
      if (!v7 || !v38)
      {
        goto LABEL_60;
      }

      v39 = [(NSString *)v7 isEqualToString:v38];

      if (!v39)
      {
        goto LABEL_61;
      }
    }

    v40 = *(v5 + 18);
    v7 = self->_analyticsIdentifier;
    v41 = v40;
    v9 = v41;
    if (v7 == v41)
    {

LABEL_64:
      if (PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && PKEqualObjects() && self->_imageContentMode == *(v5 + 15) && self->_imageOnTrailingEdge == v5[11] && self->_imageRequestExtraLarge == v5[12] && self->_strokeImage == v5[10] && self->_parseEmphasisInMessage == v5[8] && self->_showSpinner == v5[14] && self->_showDisclosure == v5[13] && self->_isDestructiveAction == v5[9] && self->_analyticsReporterSubject == *(v5 + 17))
      {
        LOBYTE(v17) = self->_reportToAnalytics == v5[15];
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v7 && v41)
    {
      v42 = [(NSString *)v7 isEqualToString:v41];

      if (v42)
      {
        goto LABEL_64;
      }

LABEL_61:
      LOBYTE(v17) = 0;
      goto LABEL_62;
    }

LABEL_60:

    goto LABEL_61;
  }

  v11 = *(v5 + 20);
  title = [(AMSDialogRequest *)self->_dialogRequest title];
  title2 = [v11 title];
  v14 = title;
  v15 = title2;
  v16 = v15;
  if (v14 == v15)
  {
  }

  else
  {
    LOBYTE(v17) = 0;
    v18 = v15;
    v19 = v14;
    if (!v14 || !v15)
    {
      goto LABEL_34;
    }

    v17 = [v14 isEqualToString:v15];

    if (!v17)
    {
      goto LABEL_35;
    }
  }

  message = [(AMSDialogRequest *)self->_dialogRequest message];
  message2 = [v11 message];
  v19 = message;
  v25 = message2;
  v18 = v25;
  if (v19 == v25)
  {
  }

  else
  {
    LOBYTE(v17) = 0;
    iconURL2 = v25;
    iconURL = v19;
    if (!v19 || !v25)
    {
      goto LABEL_33;
    }

    v17 = [v19 isEqualToString:v25];

    if (!v17)
    {
      goto LABEL_34;
    }
  }

  iconURL = [(AMSDialogRequest *)self->_dialogRequest iconURL];
  iconURL2 = [v11 iconURL];
  LOBYTE(v17) = PKEqualObjects();
LABEL_33:

LABEL_34:
LABEL_35:

LABEL_62:
  return v17;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  v6 = imageCopy;
  if (imageCopy)
  {
    imageCopy = [[PKDashboardPassMessageImageDescriptorImageAsset alloc] initWithImage:imageCopy];
  }

  imageDescriptor = self->_imageDescriptor;
  self->_imageDescriptor = &imageCopy->super;
}

@end
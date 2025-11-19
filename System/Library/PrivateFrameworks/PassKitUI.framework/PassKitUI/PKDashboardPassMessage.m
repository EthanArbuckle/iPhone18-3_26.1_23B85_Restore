@interface PKDashboardPassMessage
+ (id)messageFromDialogRequest:(id)a3 withAction:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToMessage:(id)a3;
- (PKDashboardPassMessage)init;
- (void)setImage:(id)a3;
@end

@implementation PKDashboardPassMessage

+ (id)messageFromDialogRequest:(id)a3 withAction:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 buttonActions];
  v8 = [v7 pk_firstObjectPassingTest:&__block_literal_global_13];

  v9 = objc_alloc_init(PKDashboardPassMessage);
  [(PKDashboardPassMessage *)v9 setType:2];
  v10 = [v5 identifier];
  if (v10)
  {
    [(PKDashboardPassMessage *)v9 setIdentifier:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];
    [(PKDashboardPassMessage *)v9 setIdentifier:v12];
  }

  [(PKDashboardPassMessage *)v9 setDialogRequest:v5];
  v13 = [v8 deepLink];
  if (v13)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __62__PKDashboardPassMessage_messageFromDialogRequest_withAction___block_invoke_2;
    v15[3] = &unk_1E8012268;
    v17 = v6;
    v16 = v13;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKDashboardPassMessage *)self isEqualToMessage:v5];
  }

  return v6;
}

- (BOOL)isEqualToMessage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_type != *(v4 + 3))
  {
    goto LABEL_61;
  }

  v6 = *(v4 + 2);
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
  v12 = [(AMSDialogRequest *)self->_dialogRequest title];
  v13 = [v11 title];
  v14 = v12;
  v15 = v13;
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

  v23 = [(AMSDialogRequest *)self->_dialogRequest message];
  v24 = [v11 message];
  v19 = v23;
  v25 = v24;
  v18 = v25;
  if (v19 == v25)
  {
  }

  else
  {
    LOBYTE(v17) = 0;
    v26 = v25;
    v27 = v19;
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

  v27 = [(AMSDialogRequest *)self->_dialogRequest iconURL];
  v26 = [v11 iconURL];
  LOBYTE(v17) = PKEqualObjects();
LABEL_33:

LABEL_34:
LABEL_35:

LABEL_62:
  return v17;
}

- (void)setImage:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (v4)
  {
    v4 = [[PKDashboardPassMessageImageDescriptorImageAsset alloc] initWithImage:v4];
  }

  imageDescriptor = self->_imageDescriptor;
  self->_imageDescriptor = &v4->super;
}

@end
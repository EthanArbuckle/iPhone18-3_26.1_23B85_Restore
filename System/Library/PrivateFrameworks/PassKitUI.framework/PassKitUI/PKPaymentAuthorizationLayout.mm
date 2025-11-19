@interface PKPaymentAuthorizationLayout
- (PKPaymentAuthorizationLayout)initWithStyle:(int64_t)a3 paymentRequest:(id)a4;
@end

@implementation PKPaymentAuthorizationLayout

- (PKPaymentAuthorizationLayout)initWithStyle:(int64_t)a3 paymentRequest:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = PKPaymentAuthorizationLayout;
  v7 = [(PKPaymentAuthorizationLayout *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_style = a3;
    v7->_contentHorizontalMargin = 16.0;
    if (PKUserInterfaceIdiomSupportsLargeLayouts())
    {
      v9 = 0x405E000000000000;
    }

    else
    {
      v9 = PKUIGetMinScreenWidthType() ? 0x405BC00000000000 : 0x4058000000000000;
    }

    *&v8->_valueLeftMargin = v9;
    v10 = 62.0;
    if (a3 == 1)
    {
      v10 = 36.0;
    }

    v8->_glyphDimension = v10;
    v8->_requestType = [v6 requestType];
    v8->_requestor = [v6 requestor];
    v11 = [v6 localizedNavigationTitle];
    localizedNavigationTitle = v8->_localizedNavigationTitle;
    v8->_localizedNavigationTitle = v11;

    v8->_isAMPPayment = [v6 _isAMPPayment];
    v8->_isInstallment = [v6 requestType] == 5;
    if (v8->_requestType || v8->_isAMPPayment)
    {
      v8->_isPaymentSummaryPinned = [v6 isPaymentSummaryPinned];
      requestType = v8->_requestType;
      if (requestType <= 0xD)
      {
        if (((1 << requestType) & 0x2094) != 0)
        {
          goto LABEL_13;
        }

        if (requestType == 6)
        {
LABEL_16:
          v8->_shouldSuppressTotal = 1;
          goto LABEL_17;
        }
      }

      if (!v8->_isAMPPayment)
      {
        goto LABEL_17;
      }

LABEL_13:
      if (![v6 suppressTotal])
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

LABEL_17:

  return v8;
}

@end
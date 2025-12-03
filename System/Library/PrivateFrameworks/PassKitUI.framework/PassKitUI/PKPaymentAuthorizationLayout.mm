@interface PKPaymentAuthorizationLayout
- (PKPaymentAuthorizationLayout)initWithStyle:(int64_t)style paymentRequest:(id)request;
@end

@implementation PKPaymentAuthorizationLayout

- (PKPaymentAuthorizationLayout)initWithStyle:(int64_t)style paymentRequest:(id)request
{
  requestCopy = request;
  v15.receiver = self;
  v15.super_class = PKPaymentAuthorizationLayout;
  v7 = [(PKPaymentAuthorizationLayout *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_style = style;
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
    if (style == 1)
    {
      v10 = 36.0;
    }

    v8->_glyphDimension = v10;
    v8->_requestType = [requestCopy requestType];
    v8->_requestor = [requestCopy requestor];
    localizedNavigationTitle = [requestCopy localizedNavigationTitle];
    localizedNavigationTitle = v8->_localizedNavigationTitle;
    v8->_localizedNavigationTitle = localizedNavigationTitle;

    v8->_isAMPPayment = [requestCopy _isAMPPayment];
    v8->_isInstallment = [requestCopy requestType] == 5;
    if (v8->_requestType || v8->_isAMPPayment)
    {
      v8->_isPaymentSummaryPinned = [requestCopy isPaymentSummaryPinned];
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
      if (![requestCopy suppressTotal])
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
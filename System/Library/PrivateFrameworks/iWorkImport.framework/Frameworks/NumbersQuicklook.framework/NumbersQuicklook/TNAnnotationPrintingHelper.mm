@interface TNAnnotationPrintingHelper
- (TNAnnotationPrintingHelper)initWithDataSource:(id)source documentLocale:(id)locale;
- (TNAnnotationPrintingHelperDataSource)dataSource;
- (double)heightForAdditionalContent;
- (unint64_t)numberOfAdditionalPages;
@end

@implementation TNAnnotationPrintingHelper

- (TNAnnotationPrintingHelper)initWithDataSource:(id)source documentLocale:(id)locale
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = TNAnnotationPrintingHelper;
  v6 = [(TNAnnotationPrintingHelper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_dataSource, sourceCopy);
  }

  return v7;
}

- (unint64_t)numberOfAdditionalPages
{
  v4 = objc_msgSend_dataSource(self, a2, v2);
  if (objc_msgSend_shouldPrintCommentsOfAnnotationPrintingHelper_(v4, v5, self))
  {
    objc_msgSend_availableRectForAddendumContentOfAnnotationPrintingHelper_(v4, v6, self);
    v8 = v7 == 1.79769313e308;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (double)heightForAdditionalContent
{
  v4 = objc_msgSend_dataSource(self, a2, v2);
  objc_msgSend_availableRectForAddendumContentOfAnnotationPrintingHelper_(v4, v5, self);
  v7 = v6;

  return v7;
}

- (TNAnnotationPrintingHelperDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end
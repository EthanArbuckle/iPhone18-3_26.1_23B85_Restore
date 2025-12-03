@interface PKPassShareSelectDateViewController
- (PKPassShareSelectDateViewController)initWithDate:(id)date minimumDate:(id)minimumDate maximumDate:(id)maximumDate title:(id)title;
- (void)didUpdateDate:(id)date;
- (void)reloadDataAnimated:(BOOL)animated;
@end

@implementation PKPassShareSelectDateViewController

- (PKPassShareSelectDateViewController)initWithDate:(id)date minimumDate:(id)minimumDate maximumDate:(id)maximumDate title:(id)title
{
  v21[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  minimumDateCopy = minimumDate;
  maximumDateCopy = maximumDate;
  titleCopy = title;
  v20.receiver = self;
  v20.super_class = PKPassShareSelectDateViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v20 init];
  v15 = v14;
  if (v14)
  {
    [(PKPassShareSelectDateViewController *)v14 setTitle:titleCopy];
    v16 = [[PKPassShareSelectDateSectionController alloc] initWithDate:dateCopy minimumDate:minimumDateCopy maximumDate:maximumDateCopy delegate:v15];
    sectionController = v15->_sectionController;
    v15->_sectionController = v16;

    [(PKDynamicCollectionViewController *)v15 setUseItemIdentityWhenUpdating:1];
    [(PKPaymentSetupOptionsViewController *)v15 setHeaderMode:1];
    v21[0] = v15->_sectionController;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(PKPaymentSetupOptionsViewController *)v15 setSections:v18 animated:0];
  }

  return v15;
}

- (void)didUpdateDate:(id)date
{
  dateChangeHandler = self->_dateChangeHandler;
  if (dateChangeHandler)
  {
    dateChangeHandler[2](dateChangeHandler, date);
  }
}

- (void)reloadDataAnimated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = PKPassShareSelectDateViewController;
  [(PKDynamicCollectionViewController *)&v5 reloadDataAnimated:animated];
  layout = [(PKDynamicCollectionViewController *)self layout];
  [layout invalidateLayout];
}

@end
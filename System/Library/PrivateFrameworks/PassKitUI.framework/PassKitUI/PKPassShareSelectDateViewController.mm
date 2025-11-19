@interface PKPassShareSelectDateViewController
- (PKPassShareSelectDateViewController)initWithDate:(id)a3 minimumDate:(id)a4 maximumDate:(id)a5 title:(id)a6;
- (void)didUpdateDate:(id)a3;
- (void)reloadDataAnimated:(BOOL)a3;
@end

@implementation PKPassShareSelectDateViewController

- (PKPassShareSelectDateViewController)initWithDate:(id)a3 minimumDate:(id)a4 maximumDate:(id)a5 title:(id)a6
{
  v21[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = PKPassShareSelectDateViewController;
  v14 = [(PKPaymentSetupOptionsViewController *)&v20 init];
  v15 = v14;
  if (v14)
  {
    [(PKPassShareSelectDateViewController *)v14 setTitle:v13];
    v16 = [[PKPassShareSelectDateSectionController alloc] initWithDate:v10 minimumDate:v11 maximumDate:v12 delegate:v15];
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

- (void)didUpdateDate:(id)a3
{
  dateChangeHandler = self->_dateChangeHandler;
  if (dateChangeHandler)
  {
    dateChangeHandler[2](dateChangeHandler, a3);
  }
}

- (void)reloadDataAnimated:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = PKPassShareSelectDateViewController;
  [(PKDynamicCollectionViewController *)&v5 reloadDataAnimated:a3];
  v4 = [(PKDynamicCollectionViewController *)self layout];
  [v4 invalidateLayout];
}

@end
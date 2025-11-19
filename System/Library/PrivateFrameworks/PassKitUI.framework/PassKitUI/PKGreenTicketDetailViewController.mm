@interface PKGreenTicketDetailViewController
- (PKGreenTicketDetailViewController)initWithFelicaProperty:(id)a3;
- (id)transitTicketDetailTitleForRow:(unint64_t)a3 leg:(unint64_t)a4;
- (id)transitTicketDetailValueForRow:(unint64_t)a3 leg:(unint64_t)a4;
@end

@implementation PKGreenTicketDetailViewController

- (PKGreenTicketDetailViewController)initWithFelicaProperty:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKGreenTicketDetailViewController;
  v5 = [(PKTransitTicketDetailViewController *)&v9 initWithTransitTicketDetailDataSource:self];
  if (v5)
  {
    v6 = [v4 copy];
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

- (id)transitTicketDetailTitleForRow:(unint64_t)a3 leg:(unint64_t)a4
{
  if (a3 > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = PKLocalizedPaymentString(&off_1E8013C38[a3]->isa);
  }

  return v5;
}

- (id)transitTicketDetailValueForRow:(unint64_t)a3 leg:(unint64_t)a4
{
  v6 = [(PKGreenTicketDetailViewController *)self properties:a3];
  v7 = [v6 greenCarValidityStartDate];
  v8 = [v7 date];

  switch(a3)
  {
    case 2uLL:
      v11 = [MEMORY[0x1E696AB78] localizedStringFromDate:v8 dateStyle:3 timeStyle:0];
      break;
    case 1uLL:
      v9 = [(PKGreenTicketDetailViewController *)self properties];
      v10 = [v9 greenCarDestinationStation];
      goto LABEL_6;
    case 0uLL:
      v9 = [(PKGreenTicketDetailViewController *)self properties];
      v10 = [v9 greenCarOriginStation];
LABEL_6:
      v11 = v10;

      break;
    default:
      v11 = 0;
      break;
  }

  return v11;
}

@end
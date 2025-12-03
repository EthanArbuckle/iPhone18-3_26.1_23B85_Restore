@interface PKGreenTicketDetailViewController
- (PKGreenTicketDetailViewController)initWithFelicaProperty:(id)property;
- (id)transitTicketDetailTitleForRow:(unint64_t)row leg:(unint64_t)leg;
- (id)transitTicketDetailValueForRow:(unint64_t)row leg:(unint64_t)leg;
@end

@implementation PKGreenTicketDetailViewController

- (PKGreenTicketDetailViewController)initWithFelicaProperty:(id)property
{
  propertyCopy = property;
  v9.receiver = self;
  v9.super_class = PKGreenTicketDetailViewController;
  v5 = [(PKTransitTicketDetailViewController *)&v9 initWithTransitTicketDetailDataSource:self];
  if (v5)
  {
    v6 = [propertyCopy copy];
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

- (id)transitTicketDetailTitleForRow:(unint64_t)row leg:(unint64_t)leg
{
  if (row > 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = PKLocalizedPaymentString(&off_1E8013C38[row]->isa);
  }

  return v5;
}

- (id)transitTicketDetailValueForRow:(unint64_t)row leg:(unint64_t)leg
{
  v6 = [(PKGreenTicketDetailViewController *)self properties:row];
  greenCarValidityStartDate = [v6 greenCarValidityStartDate];
  date = [greenCarValidityStartDate date];

  switch(row)
  {
    case 2uLL:
      v11 = [MEMORY[0x1E696AB78] localizedStringFromDate:date dateStyle:3 timeStyle:0];
      break;
    case 1uLL:
      properties = [(PKGreenTicketDetailViewController *)self properties];
      greenCarDestinationStation = [properties greenCarDestinationStation];
      goto LABEL_6;
    case 0uLL:
      properties = [(PKGreenTicketDetailViewController *)self properties];
      greenCarDestinationStation = [properties greenCarOriginStation];
LABEL_6:
      v11 = greenCarDestinationStation;

      break;
    default:
      v11 = 0;
      break;
  }

  return v11;
}

@end
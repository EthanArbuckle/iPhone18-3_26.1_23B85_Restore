@interface RTNavigationManagerRouteSummaryNotification
- (RTNavigationManagerRouteSummaryNotification)initWithRouteSummary:(id)summary;
- (id)description;
@end

@implementation RTNavigationManagerRouteSummaryNotification

- (RTNavigationManagerRouteSummaryNotification)initWithRouteSummary:(id)summary
{
  summaryCopy = summary;
  v5 = summaryCopy;
  if (!summaryCopy)
  {
    goto LABEL_8;
  }

  origin = [summaryCopy origin];
  latLng = [origin latLng];
  if (!latLng)
  {

    goto LABEL_8;
  }

  v8 = latLng;
  destination = [v5 destination];
  latLng2 = [destination latLng];

  if (!latLng2)
  {
LABEL_8:
    selfCopy = 0;
    goto LABEL_9;
  }

  v28.receiver = self;
  v28.super_class = RTNavigationManagerRouteSummaryNotification;
  v11 = [(RTNotification *)&v28 init];
  if (v11)
  {
    origin2 = [v5 origin];
    latLng3 = [origin2 latLng];
    [latLng3 lat];
    v11->_originLatitude = v14;

    origin3 = [v5 origin];
    latLng4 = [origin3 latLng];
    [latLng4 lng];
    v11->_originLongitude = v17;

    destinationName = [v5 destinationName];
    destinationName = v11->_destinationName;
    v11->_destinationName = destinationName;

    destination2 = [v5 destination];
    latLng5 = [destination2 latLng];
    [latLng5 lat];
    v11->_destinationLatitude = v22;

    destination3 = [v5 destination];
    latLng6 = [destination3 latLng];
    [latLng6 lng];
    v11->_destinationLongitude = v25;

    v11->_transportType = [v5 transportType];
  }

  self = v11;
  selfCopy = self;
LABEL_9:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(RTNavigationManagerRouteSummaryNotification *)self originLatitude];
  v5 = v4;
  [(RTNavigationManagerRouteSummaryNotification *)self originLongitude];
  v7 = v6;
  destinationName = [(RTNavigationManagerRouteSummaryNotification *)self destinationName];
  [(RTNavigationManagerRouteSummaryNotification *)self destinationLatitude];
  v10 = v9;
  [(RTNavigationManagerRouteSummaryNotification *)self destinationLongitude];
  v12 = [v3 stringWithFormat:@"origin, location, <%f, %f>, destination, name, %@, location, <%f, %f>", v5, v7, destinationName, v10, v11];

  return v12;
}

@end
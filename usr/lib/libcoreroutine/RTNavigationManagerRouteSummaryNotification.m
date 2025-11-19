@interface RTNavigationManagerRouteSummaryNotification
- (RTNavigationManagerRouteSummaryNotification)initWithRouteSummary:(id)a3;
- (id)description;
@end

@implementation RTNavigationManagerRouteSummaryNotification

- (RTNavigationManagerRouteSummaryNotification)initWithRouteSummary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = [v4 origin];
  v7 = [v6 latLng];
  if (!v7)
  {

    goto LABEL_8;
  }

  v8 = v7;
  v9 = [v5 destination];
  v10 = [v9 latLng];

  if (!v10)
  {
LABEL_8:
    v26 = 0;
    goto LABEL_9;
  }

  v28.receiver = self;
  v28.super_class = RTNavigationManagerRouteSummaryNotification;
  v11 = [(RTNotification *)&v28 init];
  if (v11)
  {
    v12 = [v5 origin];
    v13 = [v12 latLng];
    [v13 lat];
    v11->_originLatitude = v14;

    v15 = [v5 origin];
    v16 = [v15 latLng];
    [v16 lng];
    v11->_originLongitude = v17;

    v18 = [v5 destinationName];
    destinationName = v11->_destinationName;
    v11->_destinationName = v18;

    v20 = [v5 destination];
    v21 = [v20 latLng];
    [v21 lat];
    v11->_destinationLatitude = v22;

    v23 = [v5 destination];
    v24 = [v23 latLng];
    [v24 lng];
    v11->_destinationLongitude = v25;

    v11->_transportType = [v5 transportType];
  }

  self = v11;
  v26 = self;
LABEL_9:

  return v26;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(RTNavigationManagerRouteSummaryNotification *)self originLatitude];
  v5 = v4;
  [(RTNavigationManagerRouteSummaryNotification *)self originLongitude];
  v7 = v6;
  v8 = [(RTNavigationManagerRouteSummaryNotification *)self destinationName];
  [(RTNavigationManagerRouteSummaryNotification *)self destinationLatitude];
  v10 = v9;
  [(RTNavigationManagerRouteSummaryNotification *)self destinationLongitude];
  v12 = [v3 stringWithFormat:@"origin, location, <%f, %f>, destination, name, %@, location, <%f, %f>", v5, v7, v8, v10, v11];

  return v12;
}

@end
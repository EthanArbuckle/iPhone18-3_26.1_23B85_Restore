@interface LoadRentalInformationOperation
- (LoadRentalInformationOperation)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier;
- (void)run;
@end

@implementation LoadRentalInformationOperation

- (LoadRentalInformationOperation)initWithAccountIdentifier:(id)identifier rentalKeyIdentifier:(id)keyIdentifier
{
  identifierCopy = identifier;
  keyIdentifierCopy = keyIdentifier;
  v14.receiver = self;
  v14.super_class = LoadRentalInformationOperation;
  v8 = [(LoadRentalInformationOperation *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    accountIdentifier = v8->_accountIdentifier;
    v8->_accountIdentifier = v9;

    v11 = [keyIdentifierCopy copy];
    rentalKeyIdentifier = v8->_rentalKeyIdentifier;
    v8->_rentalKeyIdentifier = v11;
  }

  return v8;
}

- (void)run
{
  rentalKeyIdentifier = [(LoadRentalInformationOperation *)self rentalKeyIdentifier];
  if (rentalKeyIdentifier)
  {
    v4 = rentalKeyIdentifier;
    accountIdentifier = [(LoadRentalInformationOperation *)self accountIdentifier];

    if (accountIdentifier)
    {
      accountIdentifier2 = [(LoadRentalInformationOperation *)self accountIdentifier];
      unsignedLongLongValue = [accountIdentifier2 unsignedLongLongValue];
      rentalKeyIdentifier2 = [(LoadRentalInformationOperation *)self rentalKeyIdentifier];
      v9 = sub_1000B23FC(unsignedLongLongValue, [rentalKeyIdentifier2 unsignedLongLongValue]);

      if (v9)
      {
        v21 = +[NSMutableDictionary dictionary];
        v10 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v9 rentalStartTime]);
        v11 = sub_1000AECB8();
        [v21 setObject:v10 forKey:v11];

        v12 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 rentalDuration]);
        v13 = sub_1000AEC88();
        [v21 setObject:v12 forKey:v13];

        v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 playbackDuration]);
        v15 = sub_1000AEC98();
        [v21 setObject:v14 forKey:v15];

        if ([v9 playbackStartTime] != -1)
        {
          v16 = +[NSDate dateWithTimeIntervalSince1970:](NSDate, "dateWithTimeIntervalSince1970:", [v9 playbackStartTime]);
          v17 = sub_1000AECA8();
          [v21 setObject:v16 forKey:v17];
        }

        [(LoadRentalInformationOperation *)self setSuccess:1];
      }

      else
      {
        [(LoadRentalInformationOperation *)self setSuccess:0];
        v18 = SSError();
        [(LoadRentalInformationOperation *)self setError:v18];

        v21 = 0;
      }

      rentalKeyIdentifier = v21;
    }

    else
    {
      rentalKeyIdentifier = 0;
    }
  }

  v22 = rentalKeyIdentifier;
  v19 = [rentalKeyIdentifier copy];
  rentalInformation = self->_rentalInformation;
  self->_rentalInformation = v19;
}

@end
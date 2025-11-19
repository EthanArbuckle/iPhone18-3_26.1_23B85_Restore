@interface LoadRentalInformationOperation
- (LoadRentalInformationOperation)initWithAccountIdentifier:(id)a3 rentalKeyIdentifier:(id)a4;
- (void)run;
@end

@implementation LoadRentalInformationOperation

- (LoadRentalInformationOperation)initWithAccountIdentifier:(id)a3 rentalKeyIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = LoadRentalInformationOperation;
  v8 = [(LoadRentalInformationOperation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    accountIdentifier = v8->_accountIdentifier;
    v8->_accountIdentifier = v9;

    v11 = [v7 copy];
    rentalKeyIdentifier = v8->_rentalKeyIdentifier;
    v8->_rentalKeyIdentifier = v11;
  }

  return v8;
}

- (void)run
{
  v3 = [(LoadRentalInformationOperation *)self rentalKeyIdentifier];
  if (v3)
  {
    v4 = v3;
    v5 = [(LoadRentalInformationOperation *)self accountIdentifier];

    if (v5)
    {
      v6 = [(LoadRentalInformationOperation *)self accountIdentifier];
      v7 = [v6 unsignedLongLongValue];
      v8 = [(LoadRentalInformationOperation *)self rentalKeyIdentifier];
      v9 = sub_1000B23FC(v7, [v8 unsignedLongLongValue]);

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

      v3 = v21;
    }

    else
    {
      v3 = 0;
    }
  }

  v22 = v3;
  v19 = [v3 copy];
  rentalInformation = self->_rentalInformation;
  self->_rentalInformation = v19;
}

@end
@interface SPBeaconShare
- (BOOL)isEqual:(id)a3;
- (SPBeaconShare)initWithCoder:(id)a3;
- (SPBeaconShare)initWithIdentifier:(id)a3 beaconIdentifier:(id)a4 sharingCircleIdentifier:(id)a5 peerTrustIdentifier:(id)a6 owner:(id)a7 sharee:(id)a8 state:(int64_t)a9 creationDate:(id)a10 expirationDate:(id)a11 visitorCount:(int64_t)a12 delegationStatus:(BOOL)a13;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SPBeaconShare

- (SPBeaconShare)initWithIdentifier:(id)a3 beaconIdentifier:(id)a4 sharingCircleIdentifier:(id)a5 peerTrustIdentifier:(id)a6 owner:(id)a7 sharee:(id)a8 state:(int64_t)a9 creationDate:(id)a10 expirationDate:(id)a11 visitorCount:(int64_t)a12 delegationStatus:(BOOL)a13
{
  v20 = a3;
  obj = a4;
  v21 = a4;
  v30 = a5;
  v22 = a5;
  v31 = a6;
  v34 = a6;
  v32 = a7;
  v23 = a7;
  v24 = a8;
  v25 = a10;
  v33 = a11;
  v35.receiver = self;
  v35.super_class = SPBeaconShare;
  v26 = [(SPBeaconShare *)&v35 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_identifier, a3);
    objc_storeStrong(&v27->_beaconIdentifier, obj);
    objc_storeStrong(&v27->_sharingCircleIdentifier, v30);
    objc_storeStrong(&v27->_peerTrustIdentifier, v31);
    objc_storeStrong(&v27->_owner, v32);
    objc_storeStrong(&v27->_sharee, a8);
    v27->_state = a9;
    objc_storeStrong(&v27->_creationDate, a10);
    objc_storeStrong(&v27->_expirationDate, a11);
    v27->_visitorCount = a12;
    v27->_delegationStatus = a13;
  }

  return v27;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SPBeaconShare *)self identifier];
      v7 = [(SPBeaconShare *)v5 identifier];
      if ([v6 isEqual:v7])
      {
        v8 = [(SPBeaconShare *)self beaconIdentifier];
        v9 = [(SPBeaconShare *)v5 beaconIdentifier];
        if ([v8 isEqual:v9])
        {
          v10 = [(SPBeaconShare *)self sharingCircleIdentifier];
          v11 = [(SPBeaconShare *)v5 sharingCircleIdentifier];
          if ([v10 isEqual:v11])
          {
            v12 = [(SPBeaconShare *)self peerTrustIdentifier];
            v31 = [(SPBeaconShare *)v5 peerTrustIdentifier];
            v32 = v12;
            if ([v12 isEqual:v31])
            {
              v13 = [(SPBeaconShare *)self owner];
              v29 = [(SPBeaconShare *)v5 owner];
              v30 = v13;
              if ([v13 isEqual:v29])
              {
                v14 = [(SPBeaconShare *)self sharee];
                v27 = [(SPBeaconShare *)v5 sharee];
                v28 = v14;
                if ([v14 isEqual:v27])
                {
                  v15 = [(SPBeaconShare *)self creationDate];
                  v16 = [(SPBeaconShare *)v5 creationDate];
                  v26 = v15;
                  v17 = v15;
                  v18 = v16;
                  if ([v17 isEqual:v16] && (v23 = -[SPBeaconShare visitorCount](self, "visitorCount"), v23 == -[SPBeaconShare visitorCount](v5, "visitorCount")) && (v24 = -[SPBeaconShare delegationStatus](self, "delegationStatus"), v24 == -[SPBeaconShare delegationStatus](v5, "delegationStatus")))
                  {
                    v25 = [(SPBeaconShare *)self expirationDate];
                    v22 = [(SPBeaconShare *)v5 expirationDate];
                    if ([v25 isEqual:?])
                    {
                      v21 = [(SPBeaconShare *)self state];
                      v19 = v21 == [(SPBeaconShare *)v5 state];
                    }

                    else
                    {
                      v19 = 0;
                    }
                  }

                  else
                  {
                    v19 = 0;
                  }
                }

                else
                {
                  v19 = 0;
                }
              }

              else
              {
                v19 = 0;
              }
            }

            else
            {
              v19 = 0;
            }
          }

          else
          {
            v19 = 0;
          }
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = 0;
    }
  }

  return v19;
}

- (unint64_t)hash
{
  v22 = [(SPBeaconShare *)self identifier];
  v3 = [v22 hash];
  v4 = [(SPBeaconShare *)self beaconIdentifier];
  v5 = [v4 hash] ^ v3;
  v6 = [(SPBeaconShare *)self sharingCircleIdentifier];
  v7 = [v6 hash];
  v8 = [(SPBeaconShare *)self peerTrustIdentifier];
  v9 = v5 ^ v7 ^ [v8 hash];
  v10 = [(SPBeaconShare *)self visitorCount];
  v11 = v9 ^ v10 ^ [(SPBeaconShare *)self delegationStatus];
  v12 = [(SPBeaconShare *)self owner];
  v13 = [v12 hash];
  v14 = [(SPBeaconShare *)self sharee];
  v15 = v13 ^ [v14 hash];
  v16 = [(SPBeaconShare *)self creationDate];
  v17 = v15 ^ [v16 hash];
  v18 = [(SPBeaconShare *)self expirationDate];
  v19 = v11 ^ v17 ^ [v18 hash];
  v20 = [(SPBeaconShare *)self state];

  return v19 ^ v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = [SPBeaconShare alloc];
  v16 = [(SPBeaconShare *)self identifier];
  v4 = [(SPBeaconShare *)self beaconIdentifier];
  v5 = [(SPBeaconShare *)self sharingCircleIdentifier];
  v6 = [(SPBeaconShare *)self peerTrustIdentifier];
  v7 = [(SPBeaconShare *)self owner];
  v8 = [(SPBeaconShare *)self sharee];
  v9 = [(SPBeaconShare *)self state];
  v10 = [(SPBeaconShare *)self creationDate];
  v11 = [(SPBeaconShare *)self expirationDate];
  v12 = [(SPBeaconShare *)self visitorCount];
  LOBYTE(v15) = [(SPBeaconShare *)self delegationStatus];
  v13 = [(SPBeaconShare *)v17 initWithIdentifier:v16 beaconIdentifier:v4 sharingCircleIdentifier:v5 peerTrustIdentifier:v6 owner:v7 sharee:v8 state:v9 creationDate:v10 expirationDate:v11 visitorCount:v12 delegationStatus:v15];

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_beaconIdentifier forKey:@"beaconIdentifier"];
  [v5 encodeObject:self->_sharingCircleIdentifier forKey:@"sharingCircleIdentifier"];
  [v5 encodeObject:self->_peerTrustIdentifier forKey:@"peerTrustIdentifier"];
  [v5 encodeObject:self->_owner forKey:@"owner"];
  [v5 encodeObject:self->_sharee forKey:@"sharee"];
  [v5 encodeInt64:self->_state forKey:@"state"];
  [v5 encodeObject:self->_creationDate forKey:@"creationDate"];
  [v5 encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [v5 encodeInteger:self->_visitorCount forKey:@"visitorCount"];
  [v5 encodeBool:self->_delegationStatus forKey:@"delegationStatus"];
}

- (SPBeaconShare)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingCircleIdentifier"];
  sharingCircleIdentifier = self->_sharingCircleIdentifier;
  self->_sharingCircleIdentifier = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"peerTrustIdentifier"];
  peerTrustIdentifier = self->_peerTrustIdentifier;
  self->_peerTrustIdentifier = v11;

  v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"owner"];
  owner = self->_owner;
  self->_owner = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharee"];
  sharee = self->_sharee;
  self->_sharee = v15;

  self->_state = [v4 decodeIntegerForKey:@"state"];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  creationDate = self->_creationDate;
  self->_creationDate = v17;

  v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v19;

  self->_visitorCount = [v4 decodeIntegerForKey:@"visitorCount"];
  v21 = [v4 decodeBoolForKey:@"delegationStatus"];

  self->_delegationStatus = v21;
  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(SPBeaconShare *)self identifier];
  v6 = [(SPBeaconShare *)self owner];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ %@>", v4, self, v5, v6];

  return v7;
}

@end
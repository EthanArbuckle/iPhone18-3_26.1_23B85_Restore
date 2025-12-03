@interface SPBeaconShare
- (BOOL)isEqual:(id)equal;
- (SPBeaconShare)initWithCoder:(id)coder;
- (SPBeaconShare)initWithIdentifier:(id)identifier beaconIdentifier:(id)beaconIdentifier sharingCircleIdentifier:(id)circleIdentifier peerTrustIdentifier:(id)trustIdentifier owner:(id)owner sharee:(id)sharee state:(int64_t)state creationDate:(id)self0 expirationDate:(id)self1 visitorCount:(int64_t)self2 delegationStatus:(BOOL)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPBeaconShare

- (SPBeaconShare)initWithIdentifier:(id)identifier beaconIdentifier:(id)beaconIdentifier sharingCircleIdentifier:(id)circleIdentifier peerTrustIdentifier:(id)trustIdentifier owner:(id)owner sharee:(id)sharee state:(int64_t)state creationDate:(id)self0 expirationDate:(id)self1 visitorCount:(int64_t)self2 delegationStatus:(BOOL)self3
{
  identifierCopy = identifier;
  obj = beaconIdentifier;
  beaconIdentifierCopy = beaconIdentifier;
  circleIdentifierCopy = circleIdentifier;
  circleIdentifierCopy2 = circleIdentifier;
  trustIdentifierCopy = trustIdentifier;
  trustIdentifierCopy2 = trustIdentifier;
  ownerCopy = owner;
  ownerCopy2 = owner;
  shareeCopy = sharee;
  dateCopy = date;
  expirationDateCopy = expirationDate;
  v35.receiver = self;
  v35.super_class = SPBeaconShare;
  v26 = [(SPBeaconShare *)&v35 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_identifier, identifier);
    objc_storeStrong(&v27->_beaconIdentifier, obj);
    objc_storeStrong(&v27->_sharingCircleIdentifier, circleIdentifierCopy);
    objc_storeStrong(&v27->_peerTrustIdentifier, trustIdentifierCopy);
    objc_storeStrong(&v27->_owner, ownerCopy);
    objc_storeStrong(&v27->_sharee, sharee);
    v27->_state = state;
    objc_storeStrong(&v27->_creationDate, date);
    objc_storeStrong(&v27->_expirationDate, expirationDate);
    v27->_visitorCount = count;
    v27->_delegationStatus = status;
  }

  return v27;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v19 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      identifier = [(SPBeaconShare *)self identifier];
      identifier2 = [(SPBeaconShare *)v5 identifier];
      if ([identifier isEqual:identifier2])
      {
        beaconIdentifier = [(SPBeaconShare *)self beaconIdentifier];
        beaconIdentifier2 = [(SPBeaconShare *)v5 beaconIdentifier];
        if ([beaconIdentifier isEqual:beaconIdentifier2])
        {
          sharingCircleIdentifier = [(SPBeaconShare *)self sharingCircleIdentifier];
          sharingCircleIdentifier2 = [(SPBeaconShare *)v5 sharingCircleIdentifier];
          if ([sharingCircleIdentifier isEqual:sharingCircleIdentifier2])
          {
            peerTrustIdentifier = [(SPBeaconShare *)self peerTrustIdentifier];
            peerTrustIdentifier2 = [(SPBeaconShare *)v5 peerTrustIdentifier];
            v32 = peerTrustIdentifier;
            if ([peerTrustIdentifier isEqual:peerTrustIdentifier2])
            {
              owner = [(SPBeaconShare *)self owner];
              owner2 = [(SPBeaconShare *)v5 owner];
              v30 = owner;
              if ([owner isEqual:owner2])
              {
                sharee = [(SPBeaconShare *)self sharee];
                sharee2 = [(SPBeaconShare *)v5 sharee];
                v28 = sharee;
                if ([sharee isEqual:sharee2])
                {
                  creationDate = [(SPBeaconShare *)self creationDate];
                  creationDate2 = [(SPBeaconShare *)v5 creationDate];
                  v26 = creationDate;
                  v17 = creationDate;
                  v18 = creationDate2;
                  if ([v17 isEqual:creationDate2] && (v23 = -[SPBeaconShare visitorCount](self, "visitorCount"), v23 == -[SPBeaconShare visitorCount](v5, "visitorCount")) && (v24 = -[SPBeaconShare delegationStatus](self, "delegationStatus"), v24 == -[SPBeaconShare delegationStatus](v5, "delegationStatus")))
                  {
                    expirationDate = [(SPBeaconShare *)self expirationDate];
                    expirationDate2 = [(SPBeaconShare *)v5 expirationDate];
                    if ([expirationDate isEqual:?])
                    {
                      state = [(SPBeaconShare *)self state];
                      v19 = state == [(SPBeaconShare *)v5 state];
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
  identifier = [(SPBeaconShare *)self identifier];
  v3 = [identifier hash];
  beaconIdentifier = [(SPBeaconShare *)self beaconIdentifier];
  v5 = [beaconIdentifier hash] ^ v3;
  sharingCircleIdentifier = [(SPBeaconShare *)self sharingCircleIdentifier];
  v7 = [sharingCircleIdentifier hash];
  peerTrustIdentifier = [(SPBeaconShare *)self peerTrustIdentifier];
  v9 = v5 ^ v7 ^ [peerTrustIdentifier hash];
  visitorCount = [(SPBeaconShare *)self visitorCount];
  v11 = v9 ^ visitorCount ^ [(SPBeaconShare *)self delegationStatus];
  owner = [(SPBeaconShare *)self owner];
  v13 = [owner hash];
  sharee = [(SPBeaconShare *)self sharee];
  v15 = v13 ^ [sharee hash];
  creationDate = [(SPBeaconShare *)self creationDate];
  v17 = v15 ^ [creationDate hash];
  expirationDate = [(SPBeaconShare *)self expirationDate];
  v19 = v11 ^ v17 ^ [expirationDate hash];
  state = [(SPBeaconShare *)self state];

  return v19 ^ state;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = [SPBeaconShare alloc];
  identifier = [(SPBeaconShare *)self identifier];
  beaconIdentifier = [(SPBeaconShare *)self beaconIdentifier];
  sharingCircleIdentifier = [(SPBeaconShare *)self sharingCircleIdentifier];
  peerTrustIdentifier = [(SPBeaconShare *)self peerTrustIdentifier];
  owner = [(SPBeaconShare *)self owner];
  sharee = [(SPBeaconShare *)self sharee];
  state = [(SPBeaconShare *)self state];
  creationDate = [(SPBeaconShare *)self creationDate];
  expirationDate = [(SPBeaconShare *)self expirationDate];
  visitorCount = [(SPBeaconShare *)self visitorCount];
  LOBYTE(v15) = [(SPBeaconShare *)self delegationStatus];
  v13 = [(SPBeaconShare *)v17 initWithIdentifier:identifier beaconIdentifier:beaconIdentifier sharingCircleIdentifier:sharingCircleIdentifier peerTrustIdentifier:peerTrustIdentifier owner:owner sharee:sharee state:state creationDate:creationDate expirationDate:expirationDate visitorCount:visitorCount delegationStatus:v15];

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_beaconIdentifier forKey:@"beaconIdentifier"];
  [coderCopy encodeObject:self->_sharingCircleIdentifier forKey:@"sharingCircleIdentifier"];
  [coderCopy encodeObject:self->_peerTrustIdentifier forKey:@"peerTrustIdentifier"];
  [coderCopy encodeObject:self->_owner forKey:@"owner"];
  [coderCopy encodeObject:self->_sharee forKey:@"sharee"];
  [coderCopy encodeInt64:self->_state forKey:@"state"];
  [coderCopy encodeObject:self->_creationDate forKey:@"creationDate"];
  [coderCopy encodeObject:self->_expirationDate forKey:@"expirationDate"];
  [coderCopy encodeInteger:self->_visitorCount forKey:@"visitorCount"];
  [coderCopy encodeBool:self->_delegationStatus forKey:@"delegationStatus"];
}

- (SPBeaconShare)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = self->_identifier;
  self->_identifier = v5;

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"beaconIdentifier"];
  beaconIdentifier = self->_beaconIdentifier;
  self->_beaconIdentifier = v7;

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingCircleIdentifier"];
  sharingCircleIdentifier = self->_sharingCircleIdentifier;
  self->_sharingCircleIdentifier = v9;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"peerTrustIdentifier"];
  peerTrustIdentifier = self->_peerTrustIdentifier;
  self->_peerTrustIdentifier = v11;

  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"owner"];
  owner = self->_owner;
  self->_owner = v13;

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharee"];
  sharee = self->_sharee;
  self->_sharee = v15;

  self->_state = [coderCopy decodeIntegerForKey:@"state"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  creationDate = self->_creationDate;
  self->_creationDate = v17;

  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
  expirationDate = self->_expirationDate;
  self->_expirationDate = v19;

  self->_visitorCount = [coderCopy decodeIntegerForKey:@"visitorCount"];
  v21 = [coderCopy decodeBoolForKey:@"delegationStatus"];

  self->_delegationStatus = v21;
  return self;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(SPBeaconShare *)self identifier];
  owner = [(SPBeaconShare *)self owner];
  v7 = [v3 stringWithFormat:@"<%@: %p %@ %@>", v4, self, identifier, owner];

  return v7;
}

@end
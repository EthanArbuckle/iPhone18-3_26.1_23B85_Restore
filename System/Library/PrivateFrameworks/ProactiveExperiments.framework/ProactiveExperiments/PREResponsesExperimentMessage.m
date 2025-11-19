@interface PREResponsesExperimentMessage
- (BOOL)isEqual:(id)a3;
- (PREResponsesExperimentMessage)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PREResponsesExperimentMessage

- (unint64_t)hash
{
  v3 = [(PREResponsesExperimentMessage *)self title];
  v4 = [v3 hash];
  v5 = [(PREResponsesExperimentMessage *)self senderIdentifier];
  v6 = v4 + [v5 hash];
  v7 = [(PREResponsesExperimentMessage *)self summaryString];
  v8 = [v7 hash];
  v9 = [(PREResponsesExperimentMessage *)self dateSent];
  v10 = v6 + v8 + [v9 hash];

  return v10 + 31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = v4;
      v8 = [(PREResponsesExperimentMessage *)self hash];
      if (v8 == [(PREResponsesExperimentMessage *)v7 hash])
      {
        title = self->_title;
        v10 = [(PREResponsesExperimentMessage *)v7 title];
        if ([(NSString *)title isEqualToString:v10])
        {
          senderIdentifier = self->_senderIdentifier;
          v12 = [(PREResponsesExperimentMessage *)v7 senderIdentifier];
          if ([(NSString *)senderIdentifier isEqualToString:v12])
          {
            summaryString = self->_summaryString;
            v14 = [(PREResponsesExperimentMessage *)v7 summaryString];
            if ([(NSString *)summaryString isEqualToString:v14]&& (tapBack = self->_tapBack, tapBack == [(PREResponsesExperimentMessage *)v7 isTapBack]) && (emote = self->_emote, emote == [(PREResponsesExperimentMessage *)v7 isEmote]) && (read = self->_read, read == [(PREResponsesExperimentMessage *)v7 isRead]))
            {
              dateSent = self->_dateSent;
              v19 = [(PREResponsesExperimentMessage *)v7 dateSent];
              v6 = [(NSDate *)dateSent isEqualToDate:v19];
            }

            else
            {
              v6 = 0;
            }
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_opt_new();
  v5 = [(NSString *)self->_title copy];
  [v4 setTitle:v5];

  v6 = [(NSString *)self->_senderIdentifier copy];
  [v4 setSenderIdentifier:v6];

  v7 = [(NSString *)self->_summaryString copy];
  [v4 setSummaryString:v7];

  [v4 setTapBack:self->_tapBack];
  [v4 setEmote:self->_emote];
  [v4 setRead:self->_read];
  v8 = [(NSDate *)self->_dateSent copy];
  [v4 setDateSent:v8];

  return v4;
}

- (PREResponsesExperimentMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PREResponsesExperimentMessage;
  v5 = [(PREResponsesExperimentMessage *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderIdentifier"];
    v10 = [v9 copy];
    senderIdentifier = v5->_senderIdentifier;
    v5->_senderIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"summaryString"];
    v13 = [v12 copy];
    summaryString = v5->_summaryString;
    v5->_summaryString = v13;

    v5->_tapBack = [v4 decodeBoolForKey:@"tapBack"];
    v5->_emote = [v4 decodeBoolForKey:@"emote"];
    v5->_read = [v4 decodeBoolForKey:@"read"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateSent"];
    dateSent = v5->_dateSent;
    v5->_dateSent = v15;

    v17 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_senderIdentifier forKey:@"senderIdentifier"];
  [v5 encodeObject:self->_summaryString forKey:@"summaryString"];
  [v5 encodeBool:self->_tapBack forKey:@"tapBack"];
  [v5 encodeBool:self->_emote forKey:@"emote"];
  [v5 encodeBool:self->_read forKey:@"read"];
  [v5 encodeObject:self->_dateSent forKey:@"dateSent"];
}

@end
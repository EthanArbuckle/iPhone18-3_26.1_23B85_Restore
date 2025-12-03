@interface PREResponsesExperimentMessage
- (BOOL)isEqual:(id)equal;
- (PREResponsesExperimentMessage)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PREResponsesExperimentMessage

- (unint64_t)hash
{
  title = [(PREResponsesExperimentMessage *)self title];
  v4 = [title hash];
  senderIdentifier = [(PREResponsesExperimentMessage *)self senderIdentifier];
  v6 = v4 + [senderIdentifier hash];
  summaryString = [(PREResponsesExperimentMessage *)self summaryString];
  v8 = [summaryString hash];
  dateSent = [(PREResponsesExperimentMessage *)self dateSent];
  v10 = v6 + v8 + [dateSent hash];

  return v10 + 31;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      v8 = [(PREResponsesExperimentMessage *)self hash];
      if (v8 == [(PREResponsesExperimentMessage *)v7 hash])
      {
        title = self->_title;
        title = [(PREResponsesExperimentMessage *)v7 title];
        if ([(NSString *)title isEqualToString:title])
        {
          senderIdentifier = self->_senderIdentifier;
          senderIdentifier = [(PREResponsesExperimentMessage *)v7 senderIdentifier];
          if ([(NSString *)senderIdentifier isEqualToString:senderIdentifier])
          {
            summaryString = self->_summaryString;
            summaryString = [(PREResponsesExperimentMessage *)v7 summaryString];
            if ([(NSString *)summaryString isEqualToString:summaryString]&& (tapBack = self->_tapBack, tapBack == [(PREResponsesExperimentMessage *)v7 isTapBack]) && (emote = self->_emote, emote == [(PREResponsesExperimentMessage *)v7 isEmote]) && (read = self->_read, read == [(PREResponsesExperimentMessage *)v7 isRead]))
            {
              dateSent = self->_dateSent;
              dateSent = [(PREResponsesExperimentMessage *)v7 dateSent];
              v6 = [(NSDate *)dateSent isEqualToDate:dateSent];
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

- (id)copyWithZone:(_NSZone *)zone
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

- (PREResponsesExperimentMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = PREResponsesExperimentMessage;
  v5 = [(PREResponsesExperimentMessage *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderIdentifier"];
    v10 = [v9 copy];
    senderIdentifier = v5->_senderIdentifier;
    v5->_senderIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summaryString"];
    v13 = [v12 copy];
    summaryString = v5->_summaryString;
    v5->_summaryString = v13;

    v5->_tapBack = [coderCopy decodeBoolForKey:@"tapBack"];
    v5->_emote = [coderCopy decodeBoolForKey:@"emote"];
    v5->_read = [coderCopy decodeBoolForKey:@"read"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateSent"];
    dateSent = v5->_dateSent;
    v5->_dateSent = v15;

    v17 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_senderIdentifier forKey:@"senderIdentifier"];
  [coderCopy encodeObject:self->_summaryString forKey:@"summaryString"];
  [coderCopy encodeBool:self->_tapBack forKey:@"tapBack"];
  [coderCopy encodeBool:self->_emote forKey:@"emote"];
  [coderCopy encodeBool:self->_read forKey:@"read"];
  [coderCopy encodeObject:self->_dateSent forKey:@"dateSent"];
}

@end
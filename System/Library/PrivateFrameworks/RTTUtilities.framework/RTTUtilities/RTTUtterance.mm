@interface RTTUtterance
+ (BOOL)contactPathIsMe:(id)me;
- (BOOL)hasTimedOut;
- (BOOL)hasTranslation;
- (BOOL)isComplete;
- (BOOL)isEqual:(id)equal;
- (RTTUtterance)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)resetTimeout;
- (void)updateText:(id)text;
@end

@implementation RTTUtterance

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  contactPath = [(RTTUtterance *)self contactPath];
  v6 = [contactPath copy];
  [v4 setContactPath:v6];

  text = [(RTTUtterance *)self text];
  v8 = [text copy];
  [v4 setText:v8];

  translatedText = [(RTTUtterance *)self translatedText];
  v10 = [translatedText copy];
  [v4 setTranslatedText:v10];

  [v4 setIsMe:{-[RTTUtterance isMe](self, "isMe")}];
  lastChangeDate = [(RTTUtterance *)self lastChangeDate];
  v12 = [lastChangeDate copy];
  [v4 setLastChangeDate:v12];

  [v4 setIgnoreTimeoutTemporarily:{-[RTTUtterance ignoreTimeoutTemporarily](self, "ignoreTimeoutTemporarily")}];
  [v4 setIsTranscription:{-[RTTUtterance isTranscription](self, "isTranscription")}];
  return v4;
}

+ (BOOL)contactPathIsMe:(id)me
{
  meCopy = me;
  v4 = ttyLocString(@"TTYPersonMe");
  if ([meCopy isEqualToString:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[RTTTelephonyUtilities sharedUtilityProvider];
    v5 = [v6 contactPathIsMe:meCopy];
  }

  return v5;
}

- (RTTUtterance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RTTUtterance;
  v5 = [(RTTUtterance *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RTTUtteranceContactKey"];
    [(RTTUtterance *)v5 setContactPath:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RTTUtteranceTextKey"];
    [(RTTUtterance *)v5 setText:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RTTUtteranceTranslatedTextKey"];
    [(RTTUtterance *)v5 setTranslatedText:v8];

    contactPath = [(RTTUtterance *)v5 contactPath];
    [(RTTUtterance *)v5 setIsMe:[RTTUtterance contactPathIsMe:contactPath]];

    -[RTTUtterance setIsTranscription:](v5, "setIsTranscription:", [coderCopy decodeBoolForKey:@"RTTUtteranceIsTranscriptionKey"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  contactPath = [(RTTUtterance *)self contactPath];
  [coderCopy encodeObject:contactPath forKey:@"RTTUtteranceContactKey"];

  text = [(RTTUtterance *)self text];
  [coderCopy encodeObject:text forKey:@"RTTUtteranceTextKey"];

  translatedText = [(RTTUtterance *)self translatedText];
  [coderCopy encodeObject:translatedText forKey:@"RTTUtteranceTranslatedTextKey"];

  [coderCopy encodeBool:-[RTTUtterance isTranscription](self forKey:{"isTranscription"), @"RTTUtteranceIsTranscriptionKey"}];
}

- (void)dealloc
{
  [(RTTUtterance *)self setContactPath:0];
  [(RTTUtterance *)self updateText:0];
  [(RTTUtterance *)self updateTranslation:0];
  v3.receiver = self;
  v3.super_class = RTTUtterance;
  [(RTTUtterance *)&v3 dealloc];
}

- (void)updateText:(id)text
{
  [(RTTUtterance *)self setText:text];
  date = [MEMORY[0x277CBEAA8] date];
  [(RTTUtterance *)self setLastChangeDate:date];
}

- (BOOL)hasTranslation
{
  translatedText = [(RTTUtterance *)self translatedText];
  v3 = [translatedText length] != 0;

  return v3;
}

- (BOOL)hasTimedOut
{
  if ([(RTTUtterance *)self ignoreTimeoutTemporarily])
  {
    return 0;
  }

  lastChangeDate = [(RTTUtterance *)self lastChangeDate];
  if (lastChangeDate)
  {
    date = [MEMORY[0x277CBEAA8] date];
    lastChangeDate2 = [(RTTUtterance *)self lastChangeDate];
    [date timeIntervalSinceDate:lastChangeDate2];
    v3 = v7 > 3.0;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)resetTimeout
{
  date = [MEMORY[0x277CBEAA8] date];
  [(RTTUtterance *)self setLastChangeDate:date];
}

- (BOOL)isComplete
{
  v17[5] = *MEMORY[0x277D85DE8];
  text = [(RTTUtterance *)self text];
  v4 = [text length];

  if (v4)
  {
    v5 = ttyLocString(@"TTYMessageCompleteString");
    v17[0] = v5;
    v6 = ttyLocString(@"TTYMessageGoodbyeString");
    v17[1] = v6;
    v7 = ttyLocString(@"TTYMessageHangupString");
    v17[2] = v7;
    v8 = ttyLocString(@"TTYMessagePoliteHangupString");
    v17[3] = v8;
    v9 = ttyLocString(@"TTYMessageHoldString");
    v17[4] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:5];

    whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    text2 = [(RTTUtterance *)self text];
    LODWORD(v7) = [whitespaceCharacterSet characterIsMember:{objc_msgSend(text2, "characterAtIndex:", v4 - 1)}];

    if (v7)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __26__RTTUtterance_isComplete__block_invoke;
      v16[3] = &unk_279AE85A8;
      v16[4] = self;
      v16[5] = v4;
      v13 = [v10 indexOfObjectPassingTest:v16] != 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __26__RTTUtterance_isComplete__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4 >= [v3 length])
  {
    v6 = *(a1 + 40);
    v5 = v6 - [v3 length];
  }

  else
  {
    v5 = 0;
  }

  v7 = [*(a1 + 32) text];
  v8 = [v7 substringFromIndex:v5];

  v9 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:v9];
  v11 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v12 = [v3 stringByTrimmingCharactersInSet:v11];
  v13 = [v10 isEqualToString:v12];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contactPath = [(RTTUtterance *)self contactPath];
    contactPath2 = [equalCopy contactPath];
    if (contactPath == contactPath2 || (-[RTTUtterance contactPath](self, "contactPath"), v3 = objc_claimAutoreleasedReturnValue(), [equalCopy contactPath], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      text = [(RTTUtterance *)self text];
      text2 = [equalCopy text];
      v9 = [text isEqualToString:text2];

      if (contactPath == contactPath2)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = RTTUtterance;
  v4 = [(RTTUtterance *)&v10 description];
  contactPath = [(RTTUtterance *)self contactPath];
  hasTimedOut = [(RTTUtterance *)self hasTimedOut];
  text = [(RTTUtterance *)self text];
  v8 = [v3 stringWithFormat:@"%@ %@ [%d]: %{sensitive}@", v4, contactPath, hasTimedOut, text];

  return v8;
}

@end
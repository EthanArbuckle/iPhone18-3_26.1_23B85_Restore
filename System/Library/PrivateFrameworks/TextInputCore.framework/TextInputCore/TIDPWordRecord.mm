@interface TIDPWordRecord
+ (id)word:(id)word atPosition:(id)position coder:(id)coder;
- (NSNumber)codedWord;
- (NSString)cleanedWord;
- (NSString)codedWordAsString;
- (NSUUID)coderVersion;
- (id)toDPWordRecord;
@end

@implementation TIDPWordRecord

- (id)toDPWordRecord
{
  coder = [(TIDPWordRecord *)self coder];
  if (coder)
  {
    [(TIDPWordRecord *)self codedWordAsString];
  }

  else
  {
    [(TIDPWordRecord *)self cleanedWord];
  }
  v4 = ;

  v5 = [MEMORY[0x277D05318] word:v4 atPosition:self->_wordPosition];

  return v5;
}

- (NSUUID)coderVersion
{
  coder = [(TIDPWordRecord *)self coder];
  versionUUID = [coder versionUUID];

  return versionUUID;
}

- (NSString)codedWordAsString
{
  coder = [(TIDPWordRecord *)self coder];

  if (coder)
  {
    coder2 = [(TIDPWordRecord *)self coder];
    cleanedWord = [(TIDPWordRecord *)self cleanedWord];
    v6 = [coder2 stringCodeForKey:cleanedWord];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSNumber)codedWord
{
  coder = [(TIDPWordRecord *)self coder];

  if (coder)
  {
    coder2 = [(TIDPWordRecord *)self coder];
    cleanedWord = [(TIDPWordRecord *)self cleanedWord];
    v6 = [coder2 codeForKey:cleanedWord];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)cleanedWord
{
  word = [(TIDPWordRecord *)self word];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v4 = [word stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  return v4;
}

+ (id)word:(id)word atPosition:(id)position coder:(id)coder
{
  coderCopy = coder;
  positionCopy = position;
  wordCopy = word;
  v10 = objc_alloc_init(TIDPWordRecord);
  v11 = [wordCopy copy];

  [(TIDPWordRecord *)v10 setWord:v11];
  v12 = [positionCopy copy];

  [(TIDPWordRecord *)v10 setWordPosition:v12];
  [(TIDPWordRecord *)v10 setCoder:coderCopy];

  return v10;
}

@end
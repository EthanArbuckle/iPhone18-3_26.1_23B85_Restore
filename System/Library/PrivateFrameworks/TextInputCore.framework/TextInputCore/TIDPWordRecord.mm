@interface TIDPWordRecord
+ (id)word:(id)a3 atPosition:(id)a4 coder:(id)a5;
- (NSNumber)codedWord;
- (NSString)cleanedWord;
- (NSString)codedWordAsString;
- (NSUUID)coderVersion;
- (id)toDPWordRecord;
@end

@implementation TIDPWordRecord

- (id)toDPWordRecord
{
  v3 = [(TIDPWordRecord *)self coder];
  if (v3)
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
  v2 = [(TIDPWordRecord *)self coder];
  v3 = [v2 versionUUID];

  return v3;
}

- (NSString)codedWordAsString
{
  v3 = [(TIDPWordRecord *)self coder];

  if (v3)
  {
    v4 = [(TIDPWordRecord *)self coder];
    v5 = [(TIDPWordRecord *)self cleanedWord];
    v6 = [v4 stringCodeForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSNumber)codedWord
{
  v3 = [(TIDPWordRecord *)self coder];

  if (v3)
  {
    v4 = [(TIDPWordRecord *)self coder];
    v5 = [(TIDPWordRecord *)self cleanedWord];
    v6 = [v4 codeForKey:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)cleanedWord
{
  v2 = [(TIDPWordRecord *)self word];
  v3 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v4 = [v2 stringByTrimmingCharactersInSet:v3];

  return v4;
}

+ (id)word:(id)a3 atPosition:(id)a4 coder:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(TIDPWordRecord);
  v11 = [v9 copy];

  [(TIDPWordRecord *)v10 setWord:v11];
  v12 = [v8 copy];

  [(TIDPWordRecord *)v10 setWordPosition:v12];
  [(TIDPWordRecord *)v10 setCoder:v7];

  return v10;
}

@end
@interface ACTPathWord
- (ACTPathWord)initWithPath:(id)path intendedString:(id)string keyplane:(id)keyplane fromUserData:(BOOL)data;
- (id)description;
- (void)applyWithTyper:(id)typer log:(id)log;
@end

@implementation ACTPathWord

- (void)applyWithTyper:(id)typer log:(id)log
{
  v24[4] = *MEMORY[0x277D85DE8];
  logCopy = log;
  typerCopy = typer;
  if ([logCopy isDebugEnabled])
  {
    v8 = [logCopy getDebugObject:@"PATH_ARRAY"];
    v9 = v8;
    if (v8)
    {
      array = v8;
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    v22 = array;

    v23[0] = @"word";
    intendedString = [(ACTPathWord *)self intendedString];
    v24[0] = intendedString;
    v23[1] = @"path";
    path = [(ACTPathWord *)self path];
    toJsonDictionary = [path toJsonDictionary];
    v11 = [toJsonDictionary objectForKeyedSubscript:@"samples"];
    v24[1] = v11;
    v23[2] = @"layout";
    keyplane = [(ACTPathWord *)self keyplane];
    intendedString2 = [(ACTPathWord *)self intendedString];
    v14 = [keyplane jsonFrameArrayForWord:intendedString2];
    v24[2] = v14;
    v23[3] = @"userdata";
    v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[ACTPathWord fromUserData](self, "fromUserData")}];
    v24[3] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:4];
    [v22 addObject:v16];

    [logCopy addDebugObject:v22 forKey:@"PATH_ARRAY"];
  }

  path2 = [(ACTPathWord *)self path];
  callback = [(ACTPathWord *)self callback];
  [typerCopy performStrokeForPath:path2 typingLog:logCopy callback:callback];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  path = [(ACTPathWord *)self path];
  intendedString = [(ACTPathWord *)self intendedString];
  keyplane = [(ACTPathWord *)self keyplane];
  fromUserData = [(ACTPathWord *)self fromUserData];
  v10 = @"NO";
  if (fromUserData)
  {
    v10 = @"YES";
  }

  v11 = [v3 stringWithFormat:@"<%@: path=%@, intended=%@, keyplane=%@, fromUserData=%@>", v5, path, intendedString, keyplane, v10];

  return v11;
}

- (ACTPathWord)initWithPath:(id)path intendedString:(id)string keyplane:(id)keyplane fromUserData:(BOOL)data
{
  pathCopy = path;
  stringCopy = string;
  keyplaneCopy = keyplane;
  v19.receiver = self;
  v19.super_class = ACTPathWord;
  v14 = [(ACTPathWord *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_path, path);
    v16 = [stringCopy copy];
    intendedString = v15->_intendedString;
    v15->_intendedString = v16;

    objc_storeStrong(&v15->_keyplane, keyplane);
    v15->_fromUserData = data;
  }

  return v15;
}

@end
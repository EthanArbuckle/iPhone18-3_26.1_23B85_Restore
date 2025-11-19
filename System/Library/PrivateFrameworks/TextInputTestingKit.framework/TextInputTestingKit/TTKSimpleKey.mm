@interface TTKSimpleKey
- (CGRect)frame;
- (TTKSimpleKey)initWithJsonDictionary:(id)a3;
- (TTKSimpleKey)initWithString:(id)a3 frame:(CGRect)a4 keyCode:(signed __int16)a5;
- (id)toJsonDictionary;
@end

@implementation TTKSimpleKey

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)toJsonDictionary
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  [v3 setObject:self->_string forKeyedSubscript:@"string"];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_keyCode];
  [v3 setObject:v4 forKeyedSubscript:@"key_code"];

  v5 = [MEMORY[0x277CBEB38] dictionary];
  x = self->_frame.origin.x;
  *&x = x;
  v7 = [MEMORY[0x277CCABB0] numberWithFloat:x];
  [v5 setObject:v7 forKeyedSubscript:@"x"];

  y = self->_frame.origin.y;
  *&y = y;
  v9 = [MEMORY[0x277CCABB0] numberWithFloat:y];
  [v5 setObject:v9 forKeyedSubscript:@"y"];

  height = self->_frame.size.height;
  *&height = height;
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:height];
  [v5 setObject:v11 forKeyedSubscript:@"height"];

  width = self->_frame.size.width;
  *&width = width;
  v13 = [MEMORY[0x277CCABB0] numberWithFloat:width];
  [v5 setObject:v13 forKeyedSubscript:@"width"];

  [v3 setObject:v5 forKeyedSubscript:@"frame"];

  return v3;
}

- (TTKSimpleKey)initWithJsonDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = TTKSimpleKey;
  v5 = [(TTKSimpleKey *)&v22 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"frame"];
    v7 = [v6 objectForKey:@"x"];
    v8 = [v6 objectForKey:@"y"];
    v9 = [v6 objectForKey:@"height"];
    v10 = [v6 objectForKey:@"width"];
    [v7 floatValue];
    v12 = v11;
    [v8 floatValue];
    v14 = v13;
    [v10 floatValue];
    v16 = v15;
    [v9 floatValue];
    v5->_frame.origin.x = v12;
    v5->_frame.origin.y = v14;
    v5->_frame.size.width = v16;
    v5->_frame.size.height = v17;
    v18 = [v4 objectForKey:@"string"];
    string = v5->_string;
    v5->_string = v18;

    v20 = [v4 objectForKey:@"key_code"];
    v5->_keyCode = [v20 intValue];
  }

  return v5;
}

- (TTKSimpleKey)initWithString:(id)a3 frame:(CGRect)a4 keyCode:(signed __int16)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v16.receiver = self;
  v16.super_class = TTKSimpleKey;
  v13 = [(TTKSimpleKey *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_string, a3);
    v14->_frame.origin.x = x;
    v14->_frame.origin.y = y;
    v14->_frame.size.width = width;
    v14->_frame.size.height = height;
    v14->_keyCode = a5;
  }

  return v14;
}

@end
@interface PCSMTTPoint
- (PCSMTT)mtt;
- (PCSMTTPoint)initWithCoder:(id)coder;
- (PCSMTTPoint)initWithMTT:(id)t name:(id)name;
- (id)jsonDict;
- (void)complete:(BOOL)complete time:(double)time;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PCSMTTPoint

- (PCSMTTPoint)initWithMTT:(id)t name:(id)name
{
  tCopy = t;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = PCSMTTPoint;
  v8 = [(PCSMTTPoint *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_mtt, tCopy);
    objc_storeStrong(&v9->_name, name);
    date = [MEMORY[0x1E695DF00] date];
    start = v9->_start;
    v9->_start = date;

    v12 = v9;
  }

  return v9;
}

- (id)jsonDict
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = @"name";
  name = [(PCSMTTPoint *)self name];
  v11[0] = name;
  v10[1] = @"success";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PCSMTTPoint success](self, "success")}];
  v11[1] = v4;
  v10[2] = @"time";
  v5 = MEMORY[0x1E696AD98];
  [(PCSMTTPoint *)self time];
  v6 = [v5 numberWithDouble:?];
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)complete:(BOOL)complete time:(double)time
{
  self->_success = complete;
  self->_time = time;
  WeakRetained = objc_loadWeakRetained(&self->_mtt);
  [WeakRetained completePoint:self];
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_success];
  [coderCopy encodeObject:v6 forKey:@"success"];

  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_time];
  [coderCopy encodeObject:v7 forKey:@"time"];
}

- (PCSMTTPoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [(PCSMTTPoint *)self initWithMTT:0 name:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"success"];
    v6->_success = [v7 BOOLValue];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
    [v8 doubleValue];
    v6->_time = v9;

    v10 = v6;
  }

  return v6;
}

- (PCSMTT)mtt
{
  WeakRetained = objc_loadWeakRetained(&self->_mtt);

  return WeakRetained;
}

@end
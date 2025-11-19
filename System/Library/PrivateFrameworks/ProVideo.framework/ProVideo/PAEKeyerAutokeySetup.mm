@interface PAEKeyerAutokeySetup
- (PAEKeyerAutokeySetup)init;
- (PAEKeyerAutokeySetup)initWithCoder:(id)a3;
- (id)interpolateBetween:(id)a3 withWeight:(float)a4;
- (void)dealloc;
- (void)setInitialSamples:(id)a3;
@end

@implementation PAEKeyerAutokeySetup

- (PAEKeyerAutokeySetup)init
{
  v4.receiver = self;
  v4.super_class = PAEKeyerAutokeySetup;
  v2 = [(PAEKeyerAutokeySetup *)&v4 init];
  if (v2)
  {
    v2->_initialSamples = [MEMORY[0x277CBEB18] array];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PAEKeyerAutokeySetup;
  [(PAEKeyerAutokeySetup *)&v3 dealloc];
}

- (PAEKeyerAutokeySetup)initWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = PAEKeyerAutokeySetup;
  v4 = [(PAEKeyerAutokeySetup *)&v8 init];
  if (v4)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    -[PAEKeyerAutokeySetup setInitialSamples:](v4, "setInitialSamples:", [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"InitialSamples"}]);
  }

  return v4;
}

- (void)setInitialSamples:(id)a3
{
  v5 = a3;

  self->_initialSamples = a3;
}

- (id)interpolateBetween:(id)a3 withWeight:(float)a4
{
  v7 = objc_alloc_init(PAEKeyerAutokeySetup);
  if (a4 >= 1.0)
  {
    p_isa = a3;
  }

  else
  {
    p_isa = &self->super.isa;
  }

  v7->_initialSamples = [p_isa[1] mutableCopy];
  return v7;
}

@end
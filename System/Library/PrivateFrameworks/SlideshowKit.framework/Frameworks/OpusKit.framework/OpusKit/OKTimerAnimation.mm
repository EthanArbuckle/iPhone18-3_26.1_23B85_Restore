@interface OKTimerAnimation
+ (id)animationFromValues:(id)values toValues:(id)toValues withDuration:(double)duration progressBlock:(id)block completionBlock:(id)completionBlock;
- (OKTimerAnimation)init;
- (void)cancel;
- (void)dealloc;
- (void)handleTimer:(id)timer;
@end

@implementation OKTimerAnimation

- (OKTimerAnimation)init
{
  v5.receiver = self;
  v5.super_class = OKTimerAnimation;
  v2 = [(OKTimerAnimation *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_additionally = 1;
    v2->_timingFunction = [MEMORY[0x277CD9EF8] functionWithName:*MEMORY[0x277CDA7C8]];
  }

  return v3;
}

+ (id)animationFromValues:(id)values toValues:(id)toValues withDuration:(double)duration progressBlock:(id)block completionBlock:(id)completionBlock
{
  v12 = objc_alloc_init(objc_opt_class());
  v12[5] = 0.0;
  *(v12 + 7) = [block copy];
  *(v12 + 8) = [completionBlock copy];
  v12[5] = 0.0;
  *(v12 + 2) = values;
  *(v12 + 3) = toValues;
  v12[4] = duration;
  *(v12 + 6) = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:values];

  return v12;
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    if ([(NSTimer *)timer isValid])
    {
      [(NSTimer *)self->_timer invalidate];
    }

    self->_timer = 0;
  }

  progressBlock = self->_progressBlock;
  if (progressBlock)
  {

    self->_progressBlock = 0;
  }

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {

    self->_completionBlock = 0;
  }

  previousValues = self->_previousValues;
  if (previousValues)
  {

    self->_previousValues = 0;
  }

  fromValues = self->_fromValues;
  if (fromValues)
  {

    self->_fromValues = 0;
  }

  toValues = self->_toValues;
  if (toValues)
  {

    self->_toValues = 0;
  }

  timingFunction = self->_timingFunction;
  if (timingFunction)
  {

    self->_timingFunction = 0;
  }

  v10.receiver = self;
  v10.super_class = OKTimerAnimation;
  [(OKTimerAnimation *)&v10 dealloc];
}

- (void)cancel
{
  timer = self->_timer;
  if (timer)
  {
    if ([(NSTimer *)timer isValid])
    {
      [(NSTimer *)self->_timer invalidate];
    }

    self->_timer = 0;
  }

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, a2);
  }

  self->_duration = 0.0;
  self->_currentInterval = 0.0;
  fromValues = self->_fromValues;
  if (fromValues)
  {

    self->_fromValues = 0;
  }

  toValues = self->_toValues;
  if (toValues)
  {

    self->_toValues = 0;
  }

  previousValues = self->_previousValues;
  if (previousValues)
  {

    self->_previousValues = 0;
  }

  progressBlock = self->_progressBlock;
  if (progressBlock)
  {

    self->_progressBlock = 0;
  }

  v9 = self->_completionBlock;
  if (v9)
  {

    self->_completionBlock = 0;
  }
}

- (void)handleTimer:(id)timer
{
  v28 = *MEMORY[0x277D85DE8];
  currentInterval = self->_currentInterval;
  [timer timeInterval];
  if (currentInterval != 0.0)
  {
    v5 = v5 + self->_currentInterval;
  }

  self->_currentInterval = v5;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [(NSDictionary *)self->_toValues allKeys];
  v8 = [(NSArray *)allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        [-[NSDictionary objectForKeyedSubscript:](self->_fromValues objectForKeyedSubscript:{v12), "doubleValue"}];
        v14 = v13;
        [-[NSDictionary objectForKeyedSubscript:](self->_toValues objectForKeyedSubscript:{v12), "doubleValue"}];
        v16 = v15 - v14;
        v17 = self->_currentInterval / self->_duration;
        *&v17 = v17;
        [(CAMediaTimingFunction *)self->_timingFunction _solveForInput:v17];
        v19 = v14 + v16 * v18;
        if (!self->_additionally)
        {
          [-[NSMutableDictionary objectForKeyedSubscript:](self->_previousValues objectForKeyedSubscript:{v12), "doubleValue"}];
          v21 = v20;
          -[NSMutableDictionary setObject:forKeyedSubscript:](self->_previousValues, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithDouble:v19], v12);
          v19 = v19 - v21;
        }

        [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithDouble:", v19), v12}];
      }

      v9 = [(NSArray *)allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  progressBlock = self->_progressBlock;
  if (progressBlock)
  {
    progressBlock[2](progressBlock, dictionary);
  }

  if (self->_currentInterval >= self->_duration)
  {
    [(OKTimerAnimation *)self cancel];
  }
}

@end
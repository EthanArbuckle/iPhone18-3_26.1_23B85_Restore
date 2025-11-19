@interface IPAVideoAdjustmentStack
- (id)_debugDescriptionSuffix;
- (id)copyWithZone:(_NSZone *)a3;
- (id)minimumVersionForFormat:(id)a3;
- (void)setNaturalDuration:(id *)a3;
@end

@implementation IPAVideoAdjustmentStack

- (void)setNaturalDuration:(id *)a3
{
  var3 = a3->var3;
  *&self->_naturalDuration.value = *&a3->var0;
  self->_naturalDuration.epoch = var3;
}

- (id)_debugDescriptionSuffix
{
  v2 = MEMORY[0x277CCACA8];
  time = self->_naturalDuration;
  v3 = CMTimeCopyDescription(*MEMORY[0x277CBECE8], &time);
  v4 = [v2 stringWithFormat:@"naturalDuration=%@>", v3];

  return v4;
}

- (id)minimumVersionForFormat:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"com.apple.video.slomo"])
  {
    v5 = @"1.1";
LABEL_5:
    v6 = v5;
    goto LABEL_7;
  }

  if ([v4 isEqualToString:@"com.apple.video"])
  {
    v5 = @"1.0";
    goto LABEL_5;
  }

  v8.receiver = self;
  v8.super_class = IPAVideoAdjustmentStack;
  v5 = [(IPAAdjustmentStack *)&v8 minimumVersionForFormat:v4];
LABEL_7:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = IPAVideoAdjustmentStack;
  result = [(IPAAdjustmentStack *)&v6 copyWithZone:a3];
  epoch = self->_naturalDuration.epoch;
  *(result + 24) = *&self->_naturalDuration.value;
  *(result + 5) = epoch;
  return result;
}

@end
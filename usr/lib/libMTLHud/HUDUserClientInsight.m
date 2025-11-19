@interface HUDUserClientInsight
- (HUDUserClientInsight)initWithDescriptor:(HUDInsightDescriptor *)a3 timeOut:(unint64_t)a4 isPrototype:(BOOL)a5;
- (void)update:(HUDInsightDescriptor *)a3;
@end

@implementation HUDUserClientInsight

- (HUDUserClientInsight)initWithDescriptor:(HUDInsightDescriptor *)a3 timeOut:(unint64_t)a4 isPrototype:(BOOL)a5
{
  v5 = a5;
  v12.receiver = self;
  v12.super_class = HUDUserClientInsight;
  v8 = [(HUDUserClientInsight *)&v12 init];
  v9 = v8;
  if (v8)
  {
    __copy_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_s56_t64w16(&v8->_descriptor, a3);
    v9->_timeOut = a4;
    if (v5)
    {
      v10 = 0;
    }

    else
    {
      v10 = HUDCurrentTimeInNs();
    }

    v9->_timeCreated = v10;
    v9->_timeUpdated = v10;
    v9->_numInstances = !v5;
    v9->_enabled = 1;
    v9->_component = HUDReportingComponentFromIdentifier(a3->identifier);
  }

  return v9;
}

- (void)update:(HUDInsightDescriptor *)a3
{
  __copy_assignment_8_8_s0_s8_s16_s24_s32_s40_s48_s56_t64w16(&self->_descriptor, a3);
  self->_timeUpdated = HUDCurrentTimeInNs();
  ++self->_numInstances;
}

@end
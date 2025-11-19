@interface MFMonitoredInvocation
+ (id)invocationWithMethodSignature:(id)a3;
- (id)description;
- (void)dealloc;
- (void)invoke;
@end

@implementation MFMonitoredInvocation

+ (id)invocationWithMethodSignature:(id)a3
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___MFMonitoredInvocation;
  v3 = objc_msgSendSuper2(&v7, sel_invocationWithMethodSignature_, a3);
  v4 = objc_alloc_init(MFActivityMonitor);
  v5 = v3[8];
  v3[8] = v4;

  return v3;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFMonitoredInvocation;
  [(MFMonitoredInvocation *)&v2 dealloc];
}

- (void)invoke
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2720B1000, a2, OS_LOG_TYPE_FAULT, "monitor invoke failed with: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(VFPriorityDesignator *)self->_monitor priority];
  v7 = [(MFMonitoredInvocation *)self target];
  Name = sel_getName([(MFMonitoredInvocation *)self selector]);
  if (self->_isLowPriority)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v10 = [v3 stringWithFormat:@"<%@: %p priority: %lu target: %@ selector: %s lowPriority: %@>", v5, self, v6, v7, Name, v9];

  return v10;
}

@end
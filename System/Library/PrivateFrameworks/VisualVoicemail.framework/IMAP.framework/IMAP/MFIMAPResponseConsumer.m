@interface MFIMAPResponseConsumer
- (void)addConsumer:(id)a3 forSection:(id)a4;
- (void)appendData:(id)a3 forSection:(id)a4;
- (void)dealloc;
- (void)done;
@end

@implementation MFIMAPResponseConsumer

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = MFIMAPResponseConsumer;
  [(MFIMAPResponseConsumer *)&v2 dealloc];
}

- (void)addConsumer:(id)a3 forSection:(id)a4
{
  v12 = a3;
  v6 = @"<null>";
  if (a4)
  {
    v6 = a4;
  }

  v7 = v6;
  consumersBySection = self->_consumersBySection;
  if (!consumersBySection)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_consumersBySection;
    self->_consumersBySection = v9;

    consumersBySection = self->_consumersBySection;
  }

  v11 = [(NSMutableDictionary *)consumersBySection objectForKey:v7];
  [(NSMutableDictionary *)self->_consumersBySection setObject:v12 forKey:v7];
}

- (void)appendData:(id)a3 forSection:(id)a4
{
  v6 = a3;
  v7 = @"<null>";
  if (a4)
  {
    v7 = a4;
  }

  v8 = v7;
  v9 = [(NSMutableDictionary *)self->_consumersBySection objectForKey:v8];
  if (!v9)
    v10 = {;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [MFIMAPResponseConsumer appendData:forSection:];
    }
  }

  [v9 appendData:v6];
}

- (void)done
{
  v2 = [(NSMutableDictionary *)self->_consumersBySection allValues];
  [v2 makeObjectsPerformSelector:sel_done];
}

- (void)appendData:forSection:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0_4();
  v4 = 2112;
  v5 = v0;
  _os_log_debug_impl(&dword_2720B1000, v1, OS_LOG_TYPE_DEBUG, "#D %s%sserver returned data we don't have a consumer for, might be expected for section %@", v3, 0x20u);
  v2 = *MEMORY[0x277D85DE8];
}

@end
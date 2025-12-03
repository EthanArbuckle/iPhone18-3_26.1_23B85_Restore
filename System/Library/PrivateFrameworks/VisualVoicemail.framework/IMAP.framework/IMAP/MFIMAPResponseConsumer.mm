@interface MFIMAPResponseConsumer
- (void)addConsumer:(id)consumer forSection:(id)section;
- (void)appendData:(id)data forSection:(id)section;
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

- (void)addConsumer:(id)consumer forSection:(id)section
{
  consumerCopy = consumer;
  sectionCopy = @"<null>";
  if (section)
  {
    sectionCopy = section;
  }

  v7 = sectionCopy;
  consumersBySection = self->_consumersBySection;
  if (!consumersBySection)
  {
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = self->_consumersBySection;
    self->_consumersBySection = v9;

    consumersBySection = self->_consumersBySection;
  }

  v11 = [(NSMutableDictionary *)consumersBySection objectForKey:v7];
  [(NSMutableDictionary *)self->_consumersBySection setObject:consumerCopy forKey:v7];
}

- (void)appendData:(id)data forSection:(id)section
{
  dataCopy = data;
  sectionCopy = @"<null>";
  if (section)
  {
    sectionCopy = section;
  }

  v8 = sectionCopy;
  v9 = [(NSMutableDictionary *)self->_consumersBySection objectForKey:v8];
  if (!v9)
    v10 = {;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [MFIMAPResponseConsumer appendData:forSection:];
    }
  }

  [v9 appendData:dataCopy];
}

- (void)done
{
  allValues = [(NSMutableDictionary *)self->_consumersBySection allValues];
  [allValues makeObjectsPerformSelector:sel_done];
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
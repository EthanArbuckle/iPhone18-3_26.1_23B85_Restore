@interface CSEventMessage
- (CSEventMessage)initWithMessage:(id)message;
- (id)description;
- (uint64_t)isManaged;
- (void)dealloc;
@end

@implementation CSEventMessage

- (CSEventMessage)initWithMessage:(id)message
{
  messageCopy = message;
  v12.receiver = self;
  v12.super_class = CSEventMessage;
  v5 = [(CSEventMessage *)&v12 init];
  if (v5)
  {
    v5->_msg_id = xpc_dictionary_get_uint64(messageCopy, "msg_id");
    v5->_journalIno = xpc_dictionary_get_uint64(messageCopy, "j_ino");
    v5->_tocIno = xpc_dictionary_get_uint64(messageCopy, "toc_ino");
    v5->_event = xpc_dictionary_get_uint64(messageCopy, "je");
    uint64 = xpc_dictionary_get_uint64(messageCopy, "i_pc_pr");
    if (uint64)
    {
      if (uint64 == 3)
      {
        v8 = 6;
      }

      else
      {
        v8 = 0;
      }

      if (uint64 == 1)
      {
        v8 = 5;
      }
    }

    else
    {
      v7 = (uint64 >> 1) - 1;
      if (v7 > 6)
      {
        v8 = 0;
      }

      else
      {
        v8 = dword_231C22580[v7];
      }
    }

    v5->_indexType = v8;
    v5->_journalNumber = xpc_dictionary_get_uint64(messageCopy, "j_num");
    v5->_dev = xpc_dictionary_get_uint64(messageCopy, "j_dev");
    v5->_toc_size = xpc_dictionary_get_uint64(messageCopy, "toc_s");
    v5->_isManaged = xpc_dictionary_get_BOOL(messageCopy, "j_managed");
    string = xpc_dictionary_get_string(messageCopy, "j_name");
    v5->_journalName = string;
    if (string)
    {
      v5->_journalName = strdup(string);
    }

    v10 = xpc_dictionary_get_string(messageCopy, "j_cookie");
    v5->_journalCookie = v10;
    if (v10)
    {
      v5->_journalCookie = strdup(v10);
    }
  }

  return v5;
}

- (id)description
{
  v17 = *MEMORY[0x277D85DE8];
  bzero(__str, 0x400uLL);
  v3 = snprintf(__str, 0x400uLL, "<CSEventMessage: %p;", self);
  v4 = &__str[v3 + snprintf(&__str[v3], 1024 - v3, " msg: %llu", self->_msg_id)];
  event = self->_event;
  if (event >= 5)
  {
    v6 = 5;
  }

  else
  {
    v6 = self->_event;
  }

  v7 = &v4[snprintf(v4, &v17 - v4, " evt: %s (%d)", si_journal_event_name_s_journal_event_names[v6], event)];
  CSIndexTypeShortNameCString = getCSIndexTypeShortNameCString(self->_indexType);
  v9 = &v7[snprintf(v7, &v17 - v7, " type: %s", CSIndexTypeShortNameCString)];
  v10 = &v9[snprintf(v9, &v17 - v9, " managed: %d", self->_isManaged)];
  journalName = self->_journalName;
  if (journalName && *journalName)
  {
    v10 += snprintf(v10, &v17 - v10, " name: %s", self->_journalName);
  }

  journalCookie = self->_journalCookie;
  if (journalCookie && *journalCookie)
  {
    v10 += snprintf(v10, &v17 - v10, " cookie: %s", self->_journalCookie);
  }

  if (self->_journalNumber)
  {
    v10 += snprintf(v10, &v17 - v10, " num: %llu", self->_journalNumber);
  }

  if (self->_dev)
  {
    v10 += snprintf(v10, &v17 - v10, " dev: %u", self->_dev);
  }

  if (self->_journalIno)
  {
    v10 += snprintf(v10, &v17 - v10, " jino: %llu", self->_journalIno);
  }

  if (self->_tocIno)
  {
    v10 += snprintf(v10, &v17 - v10, " tino: %llu", self->_tocIno);
  }

  if (self->_toc_size)
  {
    v10 += snprintf(v10, &v17 - v10, " tocsz: %llu", self->_toc_size);
  }

  snprintf(v10, &v17 - v10, ">");
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (void)dealloc
{
  free(self->_journalName);
  free(self->_journalCookie);
  v3.receiver = self;
  v3.super_class = CSEventMessage;
  [(CSEventMessage *)&v3 dealloc];
}

- (uint64_t)isManaged
{
  if (self)
  {
    v1 = *(self + 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end
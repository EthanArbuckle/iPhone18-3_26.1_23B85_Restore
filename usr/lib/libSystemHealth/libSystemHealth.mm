id handleForCategory(unint64_t a1)
{
  if (handleForCategory_onceToken != -1)
  {
    handleForCategory_cold_1();
  }

  v2 = MEMORY[0x29EDCA990];
  v3 = MEMORY[0x29EDCA990];
  if (a1 <= 2)
  {
    v2 = handleForCategory_logHandles[a1];
  }

  return v2;
}

uint64_t __handleForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.corerepair", "device");
  v1 = handleForCategory_logHandles[0];
  handleForCategory_logHandles[0] = v0;

  v2 = os_log_create("com.apple.corerepair", "device-error");
  v3 = qword_2A189B6C8;
  qword_2A189B6C8 = v2;

  qword_2A189B6D0 = os_log_create("com.apple.corerepair", "signpost");

  return MEMORY[0x2A1C71028]();
}
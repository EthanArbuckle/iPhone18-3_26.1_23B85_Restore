@interface OS_axr_decoder
- (NSString)debugDescription;
- (void)dealloc;
@end

@implementation OS_axr_decoder

- (NSString)debugDescription
{
  v2 = MEMORY[0x2A1C7C4A8](self, a2);
  v6 = v2;
  v16 = *MEMORY[0x29EDCA608];
  v11 = 0;
  if (*(v2 + 32))
  {
    PrintChannel(v15, *(v2 + 24), &v11, (*(v2 + 16) + 16), *(v2 + 40), v3, v4, v5);
  }

  else
  {
    strcpy(v15, "<no channels defined>");
  }

  v7 = *(v6 + 56);
  if (v7)
  {
    snprintf(__str, 0x100uLL, "[%u, %u]", *(v6 + 48), v7 + *(v6 + 48) - 1);
  }

  else
  {
    strcpy(__str, "<size=0>");
  }

  v8 = *(v6 + 60);
  if (v8)
  {
    snprintf(v12, 0x100uLL, "[%u, %u]", *(v6 + 52), v8 + *(v6 + 52) - 1);
  }

  else
  {
    strcpy(v12, "<size=0>");
  }

  axr_flags_get_name(buf, 0x1000uLL, *(v6 + 80));
  v10.receiver = v6;
  v10.super_class = OS_axr_decoder;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@\n\tdata:             %p\n\tpart index:       %u\n\tlevel index:      %u\n\tchannel count:    %u\n\tchannels in part: %u\n\tdata window:      x:[%u, %u] y:[%u, %u]\n\tsub region:       x:%s y:%s\n\tflags:            %s\n\tchannels:\n%s", -[OS_axr_decoder debugDescription](&v10, sel_debugDescription), *(v6 + 16), *(v6 + 40), *(v6 + 44), *(v6 + 32), *(v6 + 36), *(v6 + 64), *(v6 + 68), *(v6 + 72), *(v6 + 76), __str, v12, buf, v15];
}

- (void)dealloc
{
  axr_decoder::~axr_decoder(&self->super.super);
  v3.receiver = v2;
  v3.super_class = OS_axr_decoder;
  [(OS_axr_decoder *)&v3 dealloc];
}

@end
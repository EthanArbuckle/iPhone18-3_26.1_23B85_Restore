@interface SAMicrostackshotStatistics
- (SAMicrostackshotStatistics)init;
- (id)debugDescription;
- (uint64_t)addMicro:(uint64_t)micro task:(uint64_t)task thread:(uint64_t)thread size:(uint64_t)size errors:;
@end

@implementation SAMicrostackshotStatistics

- (SAMicrostackshotStatistics)init
{
  v18.receiver = self;
  v18.super_class = SAMicrostackshotStatistics;
  v2 = [(SAMicrostackshotStatistics *)&v18 init];
  if (v2)
  {
    v3 = objc_alloc_init(SAMSTypeStats);
    total = v2->_total;
    v2->_total = v3;

    v5 = objc_alloc_init(SAMSTypeStats);
    interrupt = v2->_interrupt;
    v2->_interrupt = v5;

    v7 = objc_alloc_init(SAMSTypeStats);
    timer = v2->_timer;
    v2->_timer = v7;

    v9 = objc_alloc_init(SAMSTypeStats);
    io = v2->_io;
    v2->_io = v9;

    v11 = objc_alloc_init(SAMSTypeStats);
    pmi = v2->_pmi;
    v2->_pmi = v11;

    v13 = objc_alloc_init(SAMSTypeStats);
    macf = v2->_macf;
    v2->_macf = v13;

    v15 = objc_alloc_init(SAMSTypeStats);
    unknown_type = v2->_unknown_type;
    v2->_unknown_type = v15;
  }

  return v2;
}

- (uint64_t)addMicro:(uint64_t)micro task:(uint64_t)task thread:(uint64_t)thread size:(uint64_t)size errors:
{
  if (!result)
  {
    return result;
  }

  v11 = result;
  result = [(SAMSTypeStats *)*(result + 8) addTask:micro thread:task size:thread errors:size];
  v12 = *(a2 + 24);
  if (v12)
  {
    result = [(SAMSTypeStats *)v11[2] addTask:micro thread:task size:thread errors:size];
    v12 = *(a2 + 24);
    if ((v12 & 2) == 0)
    {
LABEL_4:
      if ((v12 & 8) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  else if ((*(a2 + 24) & 2) == 0)
  {
    goto LABEL_4;
  }

  result = [(SAMSTypeStats *)v11[3] addTask:micro thread:task size:thread errors:size];
  v12 = *(a2 + 24);
  if ((v12 & 8) == 0)
  {
LABEL_5:
    if ((v12 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  result = [(SAMSTypeStats *)v11[4] addTask:micro thread:task size:thread errors:size];
  v12 = *(a2 + 24);
  if ((v12 & 0x10) == 0)
  {
LABEL_6:
    if ((v12 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  result = [(SAMSTypeStats *)v11[5] addTask:micro thread:task size:thread errors:size];
  v12 = *(a2 + 24);
  if ((v12 & 0x20) != 0)
  {
LABEL_7:
    result = [(SAMSTypeStats *)v11[6] addTask:micro thread:task size:thread errors:size];
    v12 = *(a2 + 24);
  }

LABEL_8:
  if ((v12 & 0x3B) == 0)
  {
    v13 = v11[7];

    return [(SAMSTypeStats *)v13 addTask:micro thread:task size:thread errors:size];
  }

  return result;
}

- (id)debugDescription
{
  bytes = [(SAMSTypeStats *)self->_total bytes];
  v4 = [(SAMSTypeStats *)self->_total bytes_duplicate]+ bytes;
  bytes_out_of_order = [(SAMSTypeStats *)self->_total bytes_out_of_order];
  bytes_missing_load_info = [(SAMSTypeStats *)self->_total bytes_missing_load_info];
  bytes_other_data = self->_bytes_other_data;
  v67 = v4 + bytes_out_of_order + bytes_missing_load_info;
  v68 = bytes_other_data + self->_bytes_not_microstackshots + v67;
  v69 = MEMORY[0x1E696AEC0];
  num_microstackshots_filtered_out = self->_num_microstackshots_filtered_out;
  v64 = num_microstackshots_filtered_out;
  bytes_not_microstackshots = self->_bytes_not_microstackshots;
  v63 = [(SAMSTypeStats *)self->_total count];
  bytes2 = [(SAMSTypeStats *)self->_total bytes];
  num_load_infos = [(SAMSTypeStats *)self->_total num_load_infos];
  num_frames = [(SAMSTypeStats *)self->_total num_frames];
  num_duplicate = [(SAMSTypeStats *)self->_total num_duplicate];
  bytes_duplicate = [(SAMSTypeStats *)self->_total bytes_duplicate];
  num_out_of_order = [(SAMSTypeStats *)self->_total num_out_of_order];
  bytes_out_of_order2 = [(SAMSTypeStats *)self->_total bytes_out_of_order];
  num_missing_load_info = [(SAMSTypeStats *)self->_total num_missing_load_info];
  bytes_missing_load_info2 = [(SAMSTypeStats *)self->_total bytes_missing_load_info];
  v53 = [(SAMSTypeStats *)self->_interrupt count];
  bytes3 = [(SAMSTypeStats *)self->_interrupt bytes];
  num_load_infos2 = [(SAMSTypeStats *)self->_interrupt num_load_infos];
  num_frames2 = [(SAMSTypeStats *)self->_interrupt num_frames];
  num_duplicate2 = [(SAMSTypeStats *)self->_interrupt num_duplicate];
  bytes_duplicate2 = [(SAMSTypeStats *)self->_interrupt bytes_duplicate];
  num_out_of_order2 = [(SAMSTypeStats *)self->_interrupt num_out_of_order];
  bytes_out_of_order3 = [(SAMSTypeStats *)self->_interrupt bytes_out_of_order];
  num_missing_load_info2 = [(SAMSTypeStats *)self->_interrupt num_missing_load_info];
  bytes_missing_load_info3 = [(SAMSTypeStats *)self->_interrupt bytes_missing_load_info];
  v43 = [(SAMSTypeStats *)self->_timer count];
  bytes4 = [(SAMSTypeStats *)self->_timer bytes];
  num_load_infos3 = [(SAMSTypeStats *)self->_timer num_load_infos];
  num_frames3 = [(SAMSTypeStats *)self->_timer num_frames];
  num_duplicate3 = [(SAMSTypeStats *)self->_timer num_duplicate];
  bytes_duplicate3 = [(SAMSTypeStats *)self->_timer bytes_duplicate];
  num_out_of_order3 = [(SAMSTypeStats *)self->_timer num_out_of_order];
  bytes_out_of_order4 = [(SAMSTypeStats *)self->_timer bytes_out_of_order];
  num_missing_load_info3 = [(SAMSTypeStats *)self->_timer num_missing_load_info];
  bytes_missing_load_info4 = [(SAMSTypeStats *)self->_timer bytes_missing_load_info];
  v33 = [(SAMSTypeStats *)self->_io count];
  bytes5 = [(SAMSTypeStats *)self->_io bytes];
  num_load_infos4 = [(SAMSTypeStats *)self->_io num_load_infos];
  num_frames4 = [(SAMSTypeStats *)self->_io num_frames];
  num_duplicate4 = [(SAMSTypeStats *)self->_io num_duplicate];
  bytes_duplicate4 = [(SAMSTypeStats *)self->_io bytes_duplicate];
  num_out_of_order4 = [(SAMSTypeStats *)self->_io num_out_of_order];
  bytes_out_of_order5 = [(SAMSTypeStats *)self->_io bytes_out_of_order];
  num_missing_load_info4 = [(SAMSTypeStats *)self->_io num_missing_load_info];
  bytes_missing_load_info5 = [(SAMSTypeStats *)self->_io bytes_missing_load_info];
  v23 = [(SAMSTypeStats *)self->_pmi count];
  bytes6 = [(SAMSTypeStats *)self->_pmi bytes];
  num_load_infos5 = [(SAMSTypeStats *)self->_pmi num_load_infos];
  num_frames5 = [(SAMSTypeStats *)self->_pmi num_frames];
  num_duplicate5 = [(SAMSTypeStats *)self->_pmi num_duplicate];
  bytes_duplicate5 = [(SAMSTypeStats *)self->_pmi bytes_duplicate];
  num_out_of_order5 = [(SAMSTypeStats *)self->_pmi num_out_of_order];
  bytes_out_of_order6 = [(SAMSTypeStats *)self->_pmi bytes_out_of_order];
  num_missing_load_info5 = [(SAMSTypeStats *)self->_pmi num_missing_load_info];
  bytes_missing_load_info6 = [(SAMSTypeStats *)self->_pmi bytes_missing_load_info];
  v13 = [(SAMSTypeStats *)self->_macf count];
  bytes7 = [(SAMSTypeStats *)self->_macf bytes];
  num_load_infos6 = [(SAMSTypeStats *)self->_macf num_load_infos];
  num_frames6 = [(SAMSTypeStats *)self->_macf num_frames];
  num_duplicate6 = [(SAMSTypeStats *)self->_macf num_duplicate];
  [(SAMSTypeStats *)self->_macf bytes_duplicate];
  [(SAMSTypeStats *)self->_macf num_out_of_order];
  [(SAMSTypeStats *)self->_macf bytes_out_of_order];
  [(SAMSTypeStats *)self->_macf num_missing_load_info];
  [(SAMSTypeStats *)self->_macf bytes_missing_load_info];
  [(SAMSTypeStats *)self->_unknown_type count];
  [(SAMSTypeStats *)self->_unknown_type bytes];
  [(SAMSTypeStats *)self->_unknown_type num_load_infos];
  [(SAMSTypeStats *)self->_unknown_type num_frames];
  [(SAMSTypeStats *)self->_unknown_type num_duplicate];
  [(SAMSTypeStats *)self->_unknown_type bytes_duplicate];
  [(SAMSTypeStats *)self->_unknown_type num_out_of_order];
  [(SAMSTypeStats *)self->_unknown_type bytes_out_of_order];
  [(SAMSTypeStats *)self->_unknown_type num_missing_load_info];
  [(SAMSTypeStats *)self->_unknown_type bytes_missing_load_info];
  return [v69 stringWithFormat:@"Microstackshot statistics:\n%llu bytes parsed (%llu ms, %llu non-ms, %llu invalid)\n%llu filtered out\n\ntotal     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ninterrupt count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\ntimer     count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nio        count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\npmi       count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nmacf      count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)\n\nunknown   count          %llu (%llu bytes)\n          num_load_infos %llu\n          num_frames     %llu\n          duplicate      %llu (%llu bytes)\n          out_of_order   %llu (%llu bytes)\n          no_load_info   %llu (%llu bytes)", v68, v67, bytes_other_data, bytes_not_microstackshots, v64, v63, bytes2, num_load_infos, num_frames, num_duplicate, bytes_duplicate, num_out_of_order, bytes_out_of_order2, num_missing_load_info, bytes_missing_load_info2, v53, bytes3, num_load_infos2, num_frames2, num_duplicate2, bytes_duplicate2, num_out_of_order2, bytes_out_of_order3, num_missing_load_info2, bytes_missing_load_info3, v43, bytes4, num_load_infos3, num_frames3, num_duplicate3, bytes_duplicate3, num_out_of_order3, bytes_out_of_order4, num_missing_load_info3, bytes_missing_load_info4, v33, bytes5, num_load_infos4, num_frames4, num_duplicate4, bytes_duplicate4, num_out_of_order4, bytes_out_of_order5, num_missing_load_info4, bytes_missing_load_info5, v23, bytes6, num_load_infos5, num_frames5, num_duplicate5, bytes_duplicate5, num_out_of_order5, bytes_out_of_order6, num_missing_load_info5, bytes_missing_load_info6, v13, bytes7, num_load_infos6, num_frames6, num_duplicate6];
}

@end
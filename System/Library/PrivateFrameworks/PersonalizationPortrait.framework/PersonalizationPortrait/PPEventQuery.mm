@interface PPEventQuery
- (PPEventQuery)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PPEventQuery

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<PPEventQuery f:%@ t:%@>", self->_fromDate, self->_toDate];

  return v2;
}

- (PPEventQuery)initWithCoder:(id)coder
{
  v20 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PPEventQuery;
  v5 = [(PPEventQuery *)&v17 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fdt"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tdt"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    fromDate = v5->_fromDate;
    v5->_fromDate = v6;
    v13 = v6;

    toDate = v5->_toDate;
    v5->_toDate = v8;

LABEL_10:
    v11 = v5;
    goto LABEL_11;
  }

  v10 = pp_events_log_handle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = coderCopy;
    _os_log_error_impl(&dword_1A7FD3000, v10, OS_LOG_TYPE_ERROR, "failed to decode fromDate or toDate from %@", buf, 0xCu);
  }

  v11 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  fromDate = self->_fromDate;
  coderCopy = coder;
  [coderCopy encodeObject:fromDate forKey:@"fdt"];
  [coderCopy encodeObject:self->_toDate forKey:@"tdt"];
}

@end
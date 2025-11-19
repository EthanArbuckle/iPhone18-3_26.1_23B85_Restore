@interface RUISpinnerView
- (RUIObjectModel)objectModel;
- (id)spinnerView;
- (void)setSpinnerColor:(id)a3;
- (void)viewDidLayout;
@end

@implementation RUISpinnerView

- (void)setSpinnerColor:(id)a3
{
  v5 = a3;
  if (self->_spinnerColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_spinnerColor, a3);
    [(UIActivityIndicatorView *)self->_spinner setColor:self->_spinnerColor];
    v5 = v6;
  }
}

- (id)spinnerView
{
  view = self->_view;
  if (!view)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    v6 = self->_view;
    self->_view = v5;

    v7 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:10];
    spinner = self->_spinner;
    self->_spinner = v7;

    v9 = self->_spinner;
    v10 = [(RUISpinnerView *)self spinnerColor];
    if (v10)
    {
      [(UIActivityIndicatorView *)v9 setColor:v10];
    }

    else
    {
      v11 = [MEMORY[0x277D75348] _labelColor];
      [(UIActivityIndicatorView *)v9 setColor:v11];
    }

    [(UIView *)self->_view addSubview:self->_spinner];
    view = self->_view;
  }

  return view;
}

- (void)viewDidLayout
{
  v69[2] = *MEMORY[0x277D85DE8];
  v3 = [(UIView *)self->_view superview];
  [(UIView *)self->_view frame];
  if (v3)
  {
    v8 = v4;
    v9 = v5;
    [v3 bounds];
    v11 = v10;
    v13 = v12;
    [(UIView *)self->_view setFrame:v8, v9];
  }

  else
  {
    v11 = v6;
    v13 = v7;
  }

  [(UIView *)self->_view center];
  [(UIActivityIndicatorView *)self->_spinner setCenter:?];
  v14 = [(RUIElement *)self attributes];
  v15 = [v14 objectForKeyedSubscript:@"label"];

  if ([v15 length])
  {
    if (!self->_label)
    {
      v16 = objc_alloc(MEMORY[0x277D756B8]);
      v17 = [v16 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      label = self->_label;
      self->_label = v17;

      [(UILabel *)self->_label setNumberOfLines:0];
      [(UILabel *)self->_label setTextAlignment:1];
      [(UIView *)self->_view addSubview:self->_label];
    }

    v19 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v20 = [v19 mutableCopy];

    [v20 setLineBreakMode:0];
    v68[0] = *MEMORY[0x277D740A8];
    v21 = [MEMORY[0x277D74300] systemFontOfSize:15.0];
    v68[1] = *MEMORY[0x277D74118];
    v69[0] = v21;
    v69[1] = v20;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];

    [v15 boundingRectWithSize:1 options:v22 attributes:0 context:{v11, v13}];
    v24 = v23;
    v26 = v25;
    v27 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v15 attributes:v22];
    [(UILabel *)self->_label setAttributedText:v27];
    [(UIActivityIndicatorView *)self->_spinner frame];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [(UILabel *)self->_label frame];
    v34 = round((v13 - (v26 + v33)) * 0.5);
    [(UIView *)self->_view center];
    v36 = v35 - round(v24 * 0.5);
    [(UIActivityIndicatorView *)self->_spinner setFrame:v29, v34, v31, v33];
    [(UILabel *)self->_label setFrame:v36, v33 + v34, v24, v26];

    goto LABEL_25;
  }

  footer = self->_footer;
  header = self->_header;
  v39 = 0x27CD9B000;
  v40 = 0x27CD9B000uLL;
  if (!footer)
  {
    if (!header)
    {
      goto LABEL_25;
    }

LABEL_12:
    if (!self->_headerView)
    {
      v41 = [RUIHeaderView alloc];
      v42 = [(RUIElement *)self->_header attributes];
      v43 = [(RUIHeaderView *)v41 initWithAttributes:v42];
      headerView = self->_headerView;
      self->_headerView = v43;

      [(RUIHeaderElement *)self->_header configureView:self->_headerView];
      [(UIView *)self->_view addSubview:self->_headerView];
      v40 = 0x27CD9B000;
      footer = self->_footer;
    }

    v39 = 0x27CD9B000uLL;
    if (!footer)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (header)
  {
    goto LABEL_12;
  }

LABEL_15:
  v45 = *(v39 + 2020);
  if (!*(&self->super.super.isa + v45))
  {
    v46 = [RemoteUISectionFooter alloc];
    v47 = [(RUIElement *)self->_footer attributes];
    v48 = [(RemoteUISectionFooter *)v46 initWithAttributes:v47];
    v49 = *(&self->super.super.isa + v45);
    *(&self->super.super.isa + v45) = v48;

    [(RUIFooterElement *)self->_footer configureView:*(&self->super.super.isa + v45)];
    [(UIView *)self->_view addSubview:*(&self->super.super.isa + v45)];
    v40 = 0x27CD9B000uLL;
  }

LABEL_17:
  v50 = *(v40 + 2016);
  v51 = *(&self->super.super.isa + v50);
  if (v51)
  {
    [v51 frame];
    v53 = v52;
    v55 = v54;
    v56 = *(&self->super.super.isa + v50);
    [v3 bounds];
    [v56 headerHeightForWidth:v3 inView:v57];
    [v3 bounds];
    [*(&self->super.super.isa + v50) setFrame:{v53, v55}];
  }

  v58 = *(v39 + 2020);
  v59 = *(&self->super.super.isa + v58);
  if (v59)
  {
    [v59 frame];
    v61 = v60;
    v63 = v62;
    v64 = *(&self->super.super.isa + v58);
    [v3 bounds];
    [v64 footerHeightForWidth:v3 inView:v65];
    [v3 bounds];
    [*(&self->super.super.isa + v58) setFrame:{v61, v63}];
  }

  [(UIActivityIndicatorView *)self->_spinner frame];
  [(UIActivityIndicatorView *)self->_spinner setFrame:?];
  v66 = *(&self->super.super.isa + v50);
  if (v66)
  {
    [v66 frame];
    [*(&self->super.super.isa + v50) setFrame:?];
  }

  v67 = *(&self->super.super.isa + v58);
  if (v67)
  {
    [v67 frame];
    [*(&self->super.super.isa + v58) setFrame:?];
  }

LABEL_25:
}

- (RUIObjectModel)objectModel
{
  WeakRetained = objc_loadWeakRetained(&self->_objectModel);

  return WeakRetained;
}

@end